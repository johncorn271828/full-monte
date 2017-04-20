(in-package :jcorn.full-monte.spice-generator)


(defun params-to-string (params)
  (format nil "~{~a~^ ~}"
	   (mapcar #'(lambda (x) (format nil "~{~a~^=~}" x))
		   params)))

(defun params-to-many-string (params)
  (format nil "~{~a~^~%~}"
 	   (mapcar #'(lambda (x) (format nil ".param ~{~a~^=~}" x))
 		   params)))

;; (defun params-to-string (params)
;;   (format nil "~{~a~^ ~}"
;; 	  (mapcar #'(lambda (pair) (format nil "~a='1*~a' "
;; 					   (car pair)
;; 					   (cadr pair)))
;; 		  params)))

;; (defun params-to-many-string (params)
;;   (format nil "~{~a~^~%~}"
;;  	   (mapcar #'(lambda (x) (format nil ".param ~a='1*~a'"
;; 					 (car pair)
;; 					 (cadr pair)))
;;  		   params)))


(declaim (ftype function branch-to-string))

(defun subckt-to-string (branch)
  (concatenate
   'string
   ".subckt " (getf branch :subckt-name)  " " 
   (format nil "~{~a~^ ~}" (getf branch :decl-pins)) " "
   ;;(params-to-string (getf branch :params))
   newline
   ;;".param "
   (params-to-many-string (append (getf branch :params) (getf branch :decl-params)))
   newline
   (format nil "~{~a~^~%~}" (mapcar #'branch-to-string (getf branch :elements)))
   newline
   ".ends "
   (getf branch :subckt-name)
   ))

(defun param-to-string (branch)
  (concatenate 'string ".param " (params-to-string (getf branch :global-params))
	       ))

(defun instance-to-string (branch)
  (concatenate 
   'string
   (getf branch :name) " " (format nil "~{~a~^ ~}" (getf branch :locals)) " "
   (getf branch :prototype) " "
   (params-to-string (getf branch :params))
   ))

(defun element-to-string (branch)
  (concatenate 
   'string
   (getf branch :name) " " (format nil "~{~a~^ ~}" (getf branch :locals)) " "
   (if (getf branch :type) (getf branch :type) "") " "
   (if (getf branch :value) (getf branch :value) "") " "
   (params-to-string (getf branch :params))
   ))

(defun model-to-string (branch)
  (if (string= (getf branch :type) "r")
      ;;resistor models don't have parentheses around parameters, nmos and pmos do
      (concatenate 'string
		   ".model " (getf branch :model-name) " r "
		   (params-to-string (getf branch :params)))
      (concatenate 'string
		   ".model " (getf branch :model-name) " " (getf branch :type) " ( "
		   (params-to-string (getf branch :params)) " ) ")))

(defun comment-to-string (branch)
  (concatenate 
   'string
   "*"
   (make-string (count #\: (getf branch :comment)) :initial-element #\Tab)
   (subseq (getf branch :comment) 1)))
	       

(defun branch-to-string (branch)
  (cond
    ;;subctks need to be spread out
    ((member :subckt-name branch)
     (subckt-to-string branch))
    ;;misc directive
    ((member :misc-directive branch)
     (getf branch :misc-directive))
    ;;comment
    ((member :comment branch)
     (comment-to-string branch))
    ;;global params
    ((member :global-params branch) 
     (param-to-string branch))
    ;;global models
    ((member :model-name branch)
     (model-to-string branch))
    ;;subckt instantiations
    ((member :prototype branch)
     (instance-to-string branch))
    ;;everything else goes name locals type value
    ((member :name branch)
     (element-to-string branch))))

   
 (defun ast-to-spice (ast)
   (format nil "~{~a~^~%~}" (mapcar #'branch-to-string ast)))
