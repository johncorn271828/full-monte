(in-package :jcorn.full-monte.spice-generator)



(defparameter little-spi
  '(".subckt foo int1 0 1 2 3 4 100"
    ".subckt attenuator in out comm"
    "r1 in int rmod1"
    "r2 int out  rmod1"
    "r3 int comm  rmod1"
    ".model rmod1 r tc1=0.001 tc2=0.0001"
    ".ends attenuator"
    ".subckt bigatten in out"
    "xnested1 in int 0 attenuator"
    "xnested2 int out 0 attenuator"
    ".ends bigatten"
    "vt int1 0 1"
    "rin int1 1 50"
    "xsub1 1 2 100 attenuator"
    "xsub2 2 3 100 attenuator"
    "xsub3 3 4 bigatten"
    "rx1 100 0 1m"
    "rout 4 0 50"
    ".ends foo"
    ))


(defparameter little-ast (parse (preprocess little-spi)))
(princ little-ast)
(princ (ast-to-spice little-ast))

(defparameter little-flat-ast (flat-ast little-ast "foo" '()))
(princ little-flat-ast)
(princ (ast-to-spice little-flat-ast))



;; (defparameter big-spi
;;   (preprocess
;;    (nconc '(".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/fets.lib' TTt"
;; 	    ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/rdio.lib' Nt")
;; 	  (with-open-file (stream "/user/jcorn/full-monte/test/dut.spi")
;; 	    (loop for line = (read-line stream nil)
;; 	       while line
;; 	       collect line)))))
;; (with-open-file (stream "stage1-preprocessor-test.spi" 
;; 			:direction :output
;; 			:if-exists :supersede)
;;   (loop for line in big-spi do 
;;        (format stream (princ-to-string line))
;;        (format stream newline)))



;; (defparameter big-ast (parse  big-spi))
;; (with-open-file (stream "stage2-parser-test.lisp" 
;; 			:direction :output
;; 			:if-exists :supersede)
;;   (loop for line in big-ast do 
;;        (format stream (princ-to-string line))
;;        (format stream newline)))

;; (dbg (getf (find-if #'(lambda (x) (string= (getf x :subckt-name) "od12i"))
;; 		    big-ast) 
;; 	   :decl-pins))



;; (defparameter big-flat-ast (flat-ast big-ast "od12i" '("XU3")))
;; (with-open-file (stream "stage3-flattener-test.lisp"
;; 			:direction :output
;; 			:if-exists :supersede)
;;   (loop for line in big-flat-ast do 
;;        (format stream (princ-to-string line))
;;        (format stream newline)))
;; ;;(dbg big-flat-ast)
;; (dbg (loop :for thing 
;; 	:in (getf (find-if #'(lambda (x) (string= (getf x :subckt-name) "od12i")) 
;; 			   big-flat-ast)
;; 		  :elements)
;; 	:collect (getf thing :locals)))


;; (defparameter big-spice (ast-to-spice big-flat-ast))
;; (with-open-file (stream "stage4-spice-generator-test.spi"
;; 			:direction :output
;; 			:if-exists :supersede)
;;   (format stream big-spice))



(defun spice-generator-harness (np-lib r-lib deck-path dut no-flattens output-path)
  (let* ((full-deck (nconc (list np-lib r-lib)
			   (with-open-file (stream deck-path)
			     (loop for line = (read-line stream nil)
				while line
				collect line))))
	 (pre-spi (preprocess full-deck))
	 (ast (parse pre-spi))
	 (spi (ast-to-spice ast))
	 (dut-pins (getf (find-if #'(lambda (x) 
				      (string= (getf x :subckt-name) dut))
				  ast)
			 :decl-pins))
	 (fast (flat-ast ast dut no-flattens))
	 (all-nodes (remove nil 
			    (loop 
			       :for thing 
			       :in (getf (find-if #'(lambda (x) 
						      (string= (getf x :subckt-name)
							       dut))
						  fast)
					 :elements)
			       :collect (getf thing :locals))))
	 (nodes-list (reduce #'append all-nodes))
	 (nodes-set (remove-duplicates nodes-list :test #'string-equal))
	 (fspi (ast-to-spice fast)))
    (princ "Dumping to files...")
    ;;preprocessor output to file
    (with-open-file (stream (concatenate 'string
					 output-path
					 dut
					 "-stage1-preprocessor-test.spi")
			    :direction :output
			    :if-exists :supersede)
      (loop for line in pre-spi do 
	   (format stream (princ-to-string line))
	   (format stream newline)))
    ;;parser output to file
    (with-open-file (stream (concatenate 'string
					 output-path
					 dut
					 "-stage2-parser-test.lisp")
			    :direction :output
			    :if-exists :supersede)
      (loop for line in ast do 
	   (format stream (princ-to-string line))
	   (format stream newline)))
    ;;spice generator output to file
    (with-open-file (stream (concatenate 'string
					 output-path
					 dut
					 "-stage3-spice-generator-test.spi")
			    :direction :output
			    :if-exists :supersede)
      (format stream spi))
    ;;flattener output to file
    (with-open-file (stream (concatenate 'string
					 output-path
					 dut
					 "-stage4-flattener-test.lisp")
			    :direction :output
			    :if-exists :supersede)
      (loop for line in fast do 
	   (format stream (princ-to-string line))
	   (format stream newline)))
    ;;spice generator output to file post-flattening
    (with-open-file (stream (concatenate 'string
					 output-path
					 dut
					 "-stage5-flattener-spice-generator-test.spi")
			    :direction :output
			    :if-exists :supersede)
      (format stream fspi))
    (dbg dut-pins)
    ;;(dbg all-nodes)
    (dbg nodes-set)
    (dbg (length nodes-list))
    (dbg (length nodes-set))
))
    

(time
(spice-generator-harness ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/fets.lib' TTt"
			 ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/rdio.lib' Nt"
			 "/user/jcorn/full-monte/test/identity-check/PwrPOR/control/dut.spi.empy"
			 "PwrPOR"
			 '("XU3")
			 "/user/jcorn/full-monte/test/identity-check/PwrPOR/")
)
(time
(spice-generator-harness ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/fets.lib' TTt"
			 ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/rdio.lib' Nt"
			 "/user/jcorn/full-monte/test/identity-check/DQSRxAmp/control/dut.spi.empy"
			 "DQSRxAmp"
			 nil
			 "/user/jcorn/full-monte/test/identity-check/DQSRxAmp/")
)
