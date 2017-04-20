(declaim (optimize (debug 0) (safety 0) (speed 3)))
;;(declare (optimize (debug 0) (safety 0) (speed 3)))

;;borrow code
(load "/user/jcorn/full-monte/src/quicklisp.lisp")
(unless (probe-file "~/quicklisp/setup.lisp")
  (quicklisp-quickstart:install))
(load "~/quicklisp/setup.lisp")
(ql:quickload :cl-ppcre)
;;(ql:quickload :bordeaux-threads)
(ql:quickload :lparallel)
(setf lparallel:*kernel* (lparallel:make-kernel 8))

;;package definitions
(load "/user/jcorn/full-monte/packages.lisp")
;;(in-package :jcorn.full-monte)

;;these files make up the full-monte algorithm
(load "/user/jcorn/full-monte/src/utilities.lisp")
(load "/user/jcorn/full-monte/src/preprocessor.lisp")
(load "/user/jcorn/full-monte/src/parser.lisp")
(load "/user/jcorn/full-monte/src/flattener.lisp")

(load "/user/jcorn/full-monte/src/spice-generator.lisp")
;; (load "src/full-monte-cli.lisp")

;;test
;;(load "test/preprocessor-harness.lisp")
;;(load "/user/jcorn/full-monte/test/parser-harness.lisp")
;;(load "/user/jcorn/full-monte/test/flattener-harness.lisp") (exit)

(load "/user/jcorn/full-monte/test/spice-generator-harness.lisp")
;; (load "test/full-monte-cli-harness.lisp")

;;compile with eg $ ~/sbcl/bin/sbcl --load load.lisp
;;(sb-ext:save-lisp-and-die "full-monte.exe" :toplevel #'cli-main :executable t)
