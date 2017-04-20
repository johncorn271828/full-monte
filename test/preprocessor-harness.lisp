(in-package :jcorn.full-monte.preprocessor)

;;(princ (inline-lib-calls '(".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/fets.lib' TTt")))

(declaim (optimize (debug 0) (safety 0) (speed 3)))
;;(declare (optimize (debug 0) (safety 0) (speed 3)))


(dbg (remove-+-continuations '("aaaaaaa" "bbbbbbbbb+" "ccccccccc" "dddddddd" "+eeeeeeee")))

;;(dbg (preprocess (split "[\\n\\r]+" (clean-slurp "/user/jcorn/full-monte/test/dut.spi"))))


;; (dbg (lib-call-fs-dfs '(".lib '/proj/db40/a0/staff/jcorn/rbdata/cad/models/spice/fets.lib' TTt")
;; 		      '()
;; 		      ""))

(let 
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
		       (clean-slurp "/user/jcorn/full-monte/test/dut.spi")))))
  (with-open-file (stream "preprocessor-test.spi" 
			  :direction :output
			  :if-exists :supersede)
    (loop for line in (nconc TTt-library Nt-library deck) do 
	 (format stream (princ-to-string line))
	 (format stream newline))))







