 (in-package :jcorn.full-monte.utilities)

(declaim (optimize (debug 0) (safety 0) (speed 3)))
;;(declare (optimize (debug 0) (safety 0) (speed 3)))

(defparameter newline "
")

(defun clean-slurp (path)
  (cl-ppcre:regex-replace-all
   "[\\n\\r]+"
   (with-open-file (stream path)
     (let ((data (make-string (file-length stream))))
       (read-sequence data stream)
       data))
  newline ))

(defun spit (path str)
  (with-open-file (stream path :direction :output) (format stream str)))

(defun join-lines (lines)
  (labels
    ((iter (lines str)
       (if (eql lines '())
	   str
	   (iter (cdr lines) 
		 (concatenate 'string str (car lines) newline)))))
    (iter lines "")))

(defmacro princln (x)
  `(progn
     (princ ,x)
     (fresh-line)))

(defun pr (&rest args)
  (if (eql nil args)
      (princ "")
      (progn 
	(princ (car args))
	(princ " ")
	(prn (cdr args)))))

(defun prn (&rest args)
  (if (eql nil args)
      (fresh-line)
      (progn 
	(princ (car args))
	(princ " ")
	(prn (cdr args)))))

(defmacro dbg (x)
  `(let ((val-x ,x))
     (princln " ")
     (princ (quote ,x))
     (princln "  ==>  ")

     (princln val-x)
     (princln " ")
     ))


(defun ciswp (a b)
  "Case insensitive starts-with predicate"
  (if (< (length a) (length b))
      nil
      (string-equal (subseq a 0 (length b)) b)))

  
;; (defun rplaf (plist key newval)
;; 	   (labels
;; 	       ((iter (xs acc)
;; 		  (cond
;; 		    ((eql xs '()) (nreverse acc))
;; 		    ((eq key (car xs))
;; 		     (nreconc acc (cons key (cons newval (cddr xs)))))
;; 		    (t (iter (cddr xs) 
;; 			     (cons (cadr xs)
;; 				   (cons (car xs) acc)))))))
;; 	     (iter plist '())))

(defun rplaf (plist &rest pairs &key &allow-other-keys)
  (let ((result (copy-list plist)))
    (loop for (key value) on pairs by #'cddr do
	 (setf (getf result key) value))
    result))

;; (defun rplaf2 (plist &key 
;;   (labels
;;     ((iter (xs acc)
;;        (if (eq k (car xs))
;; 	   (nreconc acc (cons k (cons v (cddr xs))))
;; 	   (iter (cddr xs) 
;; 		 (cons (cadr xs)
;; 		       (cons (car xs) acc))))))
;;     (iter plist '())))

(load "/user/jcorn/full-monte/src/maxima-5.38.1/lisp-utils/defsystem.lisp")
(load "/user/jcorn/full-monte/src/maxima-5.38.1/src/maxima.system")
(funcall (intern (symbol-name :operate-on-system) :mk) "maxima"
	 :load :verbose nil)


(defun maxima-eval (expr)
  (eval (read-from-string (concatenate 'string
				       "#$ "
				       expr
				       "$"))))
(defun maxima-eval-to-string (expr)
  ;;(princ "maxima is evaluating: ") (princ expr) (fresh-line)
  (maxima-eval (concatenate 'string
			    "string("
			    expr
			    ")")))

(maxima-eval "display2d:false")
(maxima-eval "display_format_internal:true")
(maxima-eval "pwr(x,y):=x^y")
(maxima-eval "ratprint:false")
;;(maxima-eval "agauss(nom, abs_var, sigma) := exp(-(



;;hspice manual "About the hspice measurement system"
(defun maxima-fix-prefixes (expr)
  (let ((result (copy-seq expr)))
    (setf result (regex-replace-all "([^\\w][0-9]+)T" result "\\{1}*1e12"))
    (setf result (regex-replace-all "([^\\w][0-9]+)G" result "\\{1}*1e9"))
    (setf result (regex-replace-all "([^\\w][0-9]+)M" result "\\{1}*1e6"))
    (setf result (regex-replace-all "([^\\w][0-9]+)ME" result "\\{1}*1e6"))
    (setf result (regex-replace-all "([^\\w][0-9]+)X" result "\\{1}*1e6"))
    (setf result (regex-replace-all "([^\\w][0-9]+)Z" result "\\{1}*1e6"))
    (setf result (regex-replace-all "([^\\w][0-9]+)k" result "\\{1}*1e3"))
    (setf result (regex-replace-all "([^\\w][0-9]+)MI" result "\\{1}*25.4e-6"))
    (setf result (regex-replace-all "([^\\w][0-9]+)MIL" result "\\{1}*25.4e-6"))
    (setf result (regex-replace-all "([^\\w][0-9]+)u" result "\\{1}*1e-6"))
    (setf result (regex-replace-all "([^\\w][0-9]+)n" result "\\{1}*1e-9"))
    (setf result (regex-replace-all "([^\\w][0-9]+)p" result "\\{1}*1e-12"))
    (setf result (regex-replace-all "([^\\w][0-9]+)f" result "\\{1}*1e-15"))
    (setf result (regex-replace-all "([^\\w][0-9]+)a" result "\\{1}*1e-18"))
    (setf result (regex-replace-all "(^[0-9]+)T" result "\\{1}*1e12"))
    (setf result (regex-replace-all "(^[0-9]+)G" result "\\{1}*1e9"))
    (setf result (regex-replace-all "(^[0-9]+)M" result "\\{1}*1e6"))
    (setf result (regex-replace-all "(^[0-9]+)ME" result "\\{1}*1e6"))
    (setf result (regex-replace-all "(^[0-9]+)X" result "\\{1}*1e6"))
    (setf result (regex-replace-all "(^[0-9]+)Z" result "\\{1}*1e6"))
    (setf result (regex-replace-all "(^[0-9]+)k" result "\\{1}*1e3"))
    (setf result (regex-replace-all "(^[0-9]+)MI" result "\\{1}*25.4e-6"))
    (setf result (regex-replace-all "(^[0-9]+)MIL" result "\\{1}*25.4e-6"))
    (setf result (regex-replace-all "(^[0-9]+)u" result "\\{1}*1e-6"))
    (setf result (regex-replace-all "(^[0-9]+)n" result "\\{1}*1e-9"))
    (setf result (regex-replace-all "(^[0-9]+)p" result "\\{1}*1e-12"))
    (setf result (regex-replace-all "(^[0-9]+)f" result "\\{1}*1e-15"))
    (setf result (regex-replace-all "(^[0-9]+)a" result "\\{1}*1e-18"))
    (unless (string= expr result)
      (format t "Warning: converted ~a to ~a for maxima ~%" expr result))
    (string-trim "'" result)))
  

(defun maxima-remember-vars (pairs)
  (loop :for pair :in pairs :do
     (let ((command (concatenate 'string
				 (car pair)
				 ":"
				 (maxima-fix-prefixes (cadr pair)))))
       (maxima-eval command)))
  (loop :for pair :in pairs :do
     (let ((command (concatenate 'string
				 (car pair)
				 ":"
				 (maxima-fix-prefixes (cadr pair)))))
       (princ "Maxima command: ")
       (princ command)
       (fresh-line)
       (maxima-eval command)
       (princ "Maxima remembers: ")
       (princ (maxima-eval (concatenate 'string
					"string("
					(car pair)
					")$")))
       (fresh-line)
       )))

(defun maxima-boundp (string)
  (boundp (read-from-string (concatenate 'string
					 "maxima::$"
					 string))))

(defun maxima-remember-noclobber (pairs)
  ;;load definitions into maxima
  (loop :for pair :in pairs :do
     ;;(dbg pair)
     (unless (maxima-boundp (car pair))
       (maxima-eval (concatenate 'string 
				 (car pair)
				 ":"
				 (maxima-fix-prefixes (cadr pair))))))
  ;;let maxima work out the numbers by evaluating each while knowing all
  (loop :for pair :in pairs :do
     ;;(dbg pair)
     (maxima-eval (concatenate 'string
			       (car pair)
			       ":ev("
			       (car pair)
			       ",float)")))
  ;;debug printing
  ;; (loop for pair in pairs do (format t "~a = ~a~%" 
  ;; 				     (car pair) 
  ;; 				     (maxima-eval-to-string (car pair))))
  )
    


(defun maxima-forget-vars (pairs)
  ;;(maxima-eval "reset(); kill(all)"))
  (loop :for pair :in pairs :do
     (makunbound (read-from-string (concatenate 'string 
						"maxima::$"
						(car pair))))))
			      
