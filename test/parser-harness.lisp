;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(in-package :jcorn.full-monte.parser)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(princ (parse-subckt '(
".subckt bigatten in out"
".subckt attenuator in out comm"
"r1 in int 16.67 rmod1"
"r2 int out 16.67 rmod1"
"r3 int comm 66.67 rmod1"
".model rmod1 r tc1=0.001 tc2=0.0001"
".ends"
"xnested1 in int 0 attenuator"
"xnested2 int out 0 attenuator"
".ends")))

(defparameter last-ast
(let* 
  ((TTt-library
    (preprocess
     (list
      ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/fets.lib' TTt")))
   (Nt-library 
    (preprocess 
     (list
      ".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/rdio.lib' Nt")))
   (deck
    (preprocess (split "[\\n\\r]+" 
		       (clean-slurp "/user/jcorn/full-monte/test/dut.spi"))))
   (ast (parse (nconc TTt-library Nt-library deck))))
  

  (princ "harness writing ast to file...")
  (with-open-file (stream "parser-test.lisp" 
			  :direction :output
			  :if-exists :supersede)
    (loop for line in ast do 
	 (format stream (princ-to-string line))
	 (format stream newline)))
  ast))

