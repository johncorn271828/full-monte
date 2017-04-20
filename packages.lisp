(defpackage :jcorn.full-monte
  (:use :common-lisp)
  ;;(:export :full-monte)
  )

(defpackage :jcorn.full-monte.utilities
  (:use :common-lisp)
  (:import-from :cl-ppcre 
		:regex-replace
		:regex-replace-all
		:split
		:scan-to-strings
		:all-matches-as-strings)
  (:export :clean-slurp
	   :spit
	   :dbg
	   :princln
	   :pr
	   :prn
	   :case-insensitive-starts-withp
	   :newline
	   :ciswp
	   :rplaf
	   :maxima-eval
	   :maxima-eval-to-string
	   :maxima-fix-prefixes
	   :maxima-remember-vars
	   :maxima-remember-noclobber
	   :maxima-forget-vars)
  )

(defpackage :jcorn.full-monte.preprocessor
  (:use :common-lisp :jcorn.full-monte.utilities)
  (:import-from :cl-ppcre 
		:regex-replace
		:regex-replace-all
		:split
		:scan-to-strings
		:all-matches-as-strings)
  (:shadowing-import-from :jcorn.full-monte.utilities
		:clean-slurp
		:spit
		:dbg
		:princln
		:pr
		:prn
		:newline
		:ciswp)
  (:export :preprocess :chase-lib-call))

(defpackage :jcorn.full-monte.parser
  (:use :common-lisp :jcorn.full-monte.utilities)
  (:import-from :cl-ppcre 
		:regex-replace
		:regex-replace-all
		:split
		:scan-to-strings
		:all-matches 
		:all-matches-as-strings)
  (:shadowing-import-from :jcorn.full-monte.utilities
		:clean-slurp
		:spit
		:dbg
		:princln
		:pr
		:prn
		:newline
		:ciswp
		:rplaf)
  (:shadowing-import-from :jcorn.full-monte.preprocessor
			  :preprocess)
  (:export :parse))

(defpackage :jcorn.full-monte.flattener
  (:use :common-lisp :jcorn.full-monte.utilities)
  (:import-from :cl-ppcre 
		:regex-replace
		:regex-replace-all
		:split
		:scan-to-strings
		:all-matches-as-strings)
  (:import-from :lparallel
		:pmapcar)
  (:shadowing-import-from :jcorn.full-monte.utilities
		:clean-slurp
		:spit
		:dbg
		:princln
		:pr
		:prn
		:newline
		:ciswp
		:rplaf
		:maxima-eval
		:maxima-eval-to-string
		:maxima-fix-prefixes
		:maxima-remember-vars
		:maxima-remember-noclobber
		:maxima-forget-vars)
  (:shadowing-import-from :jcorn.full-monte.preprocessor
			  :preprocess)
  (:shadowing-import-from :jcorn.full-monte.parser
			  :parse)
  (:export :flat-ast))


(defpackage :jcorn.full-monte.spice-generator
  (:use :common-lisp :jcorn.full-monte.utilities)
  (:import-from :cl-ppcre 
		:regex-replace
		:regex-replace-all
		:split
		:scan-to-strings
		:all-matches-as-strings)
  (:shadowing-import-from :jcorn.full-monte.utilities
		:clean-slurp
		:spit
		:dbg
		:princln
		:pr
		:prn
		:newline
		:ciswp
		:rplaf)
  (:shadowing-import-from :jcorn.full-monte.preprocessor
			  :preprocess)
  (:shadowing-import-from :jcorn.full-monte.parser
			  :parse)
  (:shadowing-import-from :jcorn.full-monte.flattener
			  :flat-ast)
  (:export :ast-to-spice))
