;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(in-package :jcorn.full-monte.flattener)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; (let*
;;     ((little-spi  '(".subckt bigatten in out"
;; 		    ".subckt attenuator in out comm"
;; 		    "r1 in int 16.67 rmod1"
;; 		    "r2 int out 16.67 rmod1"
;; 		    "r3 int comm 66.67 rmod1"
;; 		    ".model rmod1 r tc1=0.001 tc2=0.0001"
;; 		    ".ends"
;; 		    "xnested1 in int 0 attenuator"
;; 		    "xnested2 int out 0 attenuator"
;; 		    ".ends"))
;;      (little-ast (parse (preprocess little-spi))))
;;   (dbg little-ast)
;;   (princ "Beginning flattening little-ast")
;;   (princ (flat-ast little-ast)))

(defparameter little-spi
  '(".subckt bigatten in out"
    ".subckt attenuator in out comm"
    "r1 in int 16.67 rmod1"
    "r2 int out 16.67 rmod1"
    "r3 int comm 66.67 rmod1"
    ".model rmod1 r tc1=0.001 tc2=0.0001"
    ".ends"
    "xnested1 in int 0 attenuator"
    "xnested2 int out 0 attenuator"
    ".ends"))
(dbg little-spi)

(defparameter little-ast (parse (preprocess little-spi)))
(dbg little-ast)

(defparameter little-flat-ast (flat-ast little-ast "bigatten" '()))
(dbg little-flat-ast)





(defparameter big-spi
  (preprocess
   (nconc '(".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/fets.lib' TTt"
	    ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/rdio.lib' Nt")
	  (with-open-file (stream "/user/jcorn/full-monte/test/dut.spi")
	    (loop for line = (read-line stream nil)
	       while line
	       collect line)))))
(with-open-file (stream "stage1-preprocessor-test.spi" 
			:direction :output
			:if-exists :supersede)
  (loop for line in big-spi do 
       (format stream (princ-to-string line))
       (format stream newline)))



(defparameter big-ast (parse  big-spi))
(with-open-file (stream "stage2-parser-test.lisp" 
			:direction :output
			:if-exists :supersede)
  (loop for line in big-ast do 
       (format stream (princ-to-string line))
       (format stream newline)))



(defparameter big-flat-ast (flat-ast big-ast "od12i" '("XU3")))
(with-open-file (stream "stage3-flattener-test.lisp"
			:direction :output
			:if-exists :supersede)
  (loop for line in big-flat-ast do 
       (format stream (princ-to-string line))
       (format stream newline)))
;;(dbg big-flat-ast)
