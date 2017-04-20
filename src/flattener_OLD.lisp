;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(in-package :jcorn.full-monte.flattener)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;This suppresses irrelevant compiler warnings about mutual recursion
;;;;(declaim (ftype function flatten-elements))
;;(declaim (optimize (debug 0) (safety 0) (speed 3)))


(defun should-flattenp (element symbol-table no-flattens)
  (cond
    ;;needs to be an instance of something
    ((not (member :prototype element)) nil)
    ;;needs to be a global or local subckt
    ((not (member (getf element :prototype)
		  (mapcar #'(lambda (x) (getf x :subckt-name)) symbol-table)
		  :test #'string=))
     nil)
    ;;type needs to not be on no-flattens list
    ;;(msg (dbg element))
    ((member (getf element :prototype) no-flattens :test #'string=) 
     (progn 
       (format t "Not flattening instance of type ~a" (getf element :prototype))
       nil))
    ;;name needs to not be on the no-flattens list
    ;;((member (getf element :name) no-flattens :test #'string=) nil)
    ((member (getf element :name) no-flattens :test #'string=) 
     (progn
       (format t "Not flattening instance named ~a~%" (getf element :name))
       nil))
    (t t)))


(defun sub-into-math-pass (old new expr)
  ;;(declare (simple-string old) (simple-string new) (simple-string expr)
  ;;	   (optimize (speed 3) (safety 0) (debug 0)))
  ;;apparently the whole program spends almost all its time in this call
  (regex-replace-all (concatenate 'string
				  "([\\(\\)\\+\\-\\*/\\s=\\',]|^)"
				  old
				  "([\\(\\)\\+\\-\\*/\\s\\',]|$)")
		     expr
		     (concatenate 'string "\\{1}" (string-trim "'" new) "\\{2}")))
;;do the regex-replace-all twice because adjacent matches need the 2nd pass
(defun sub-into-math (old new expr)
  ;;(declare (simple-string old) (simple-string new) (simple-string expr)
  ;;	   (optimize (speed 3) (safety 0) (debug 0)))
  (let ((first-pass (sub-into-math-pass old new expr)))
    (sub-into-math-pass old new first-pass)))
  


(defun hierarchicalize-locals (child parent decl-body)
  ;;parent's pins' names need to clobber decl pins' names in order, so build
  ;; an association between parent pins and decl pins. use this association
  ;; to preserve names of child pins external to parent. Other pins need to
  ;; be renamed hierarchically to avoid unintended shorts.
  (let ((hierarchicalized-locals nil)
	(association (mapcar #'cons  (getf decl-body :decl-pins) (getf parent :locals))))
    (loop :for local :in (getf child :locals) :do
	 (if (assoc local association :test #'string-equal)
	     ;;pins external to parent keep external names
	     (setf hierarchicalized-locals 
		   (cons (cdr (assoc local association :test #'string-equal))
			 hierarchicalized-locals))
	     ;;pins inside subckt need new names
	     (setf hierarchicalized-locals (cons (concatenate 'string 
							      local
							      ":"
							      (getf parent :name))
						 hierarchicalized-locals)))
       ;;keep a set of 
       )
    (setf hierarchicalized-locals (nreverse hierarchicalized-locals))
    ;; (dbg (getf child :locals))
    ;; (dbg (getf parent :locals))
    ;; (dbg (getf decl-body :decl-pins))
    ;; (dbg hierarchicalized-locals)
    (rplaf child :locals hierarchicalized-locals)))
		   
	     

	     
  

(defun hierarchicalize-value (element)
  ;;(declare (optimize (speed 3) (safety 0) (debug 0)))
  (if (not (getf element :value))
      element
      (let* ((params (append (getf element :parent-params)
			     (getf element :decl-params) 
			     (getf element :body-params)
			     (getf element :params)))
	     (newvalue (reduce #'(lambda (acc param)
				   (sub-into-math (car param) (cadr param) acc))
			       params
			       :initial-value (getf element :value))))
	;; (dbg (getf element :value)) 
	;; (dbg (getf element :decl-params) )
	;; (dbg (getf element :params))
	;; (dbg newvalue)
	(rplaf element 
	       :value newvalue))))
  


(defun insert-params (froms tos)
  (let ((current nil)
	(result nil))
    (loop :for to :in tos :do
	 (setf current (copy-tree to))
	 (loop :for from :in froms :do
	      (setf (cadr current) 
		    (sub-into-math (car from) (cadr from) (cadr current))))
	 (setf result (cons current result)))
    result))
	      

(defun hierarchicalize-params (child parent-params decl-params body-params)
"Order of propagation of parameters goes parent instance -> declaration line
-> declaration body -> child instances"
  (let* ((hier-decl-params (insert-params parent-params decl-params))
	 (hier-body-params (insert-params (append parent-params 
						  hier-decl-params)
					  body-params))
	 (hier-child-params (insert-params (append parent-params 
						   hier-decl-params 
						   hier-body-params)
					   (getf child :params))))
    (rplaf child 
	   :parent-params parent-params
	   :decl-params hier-decl-params
	   :body-params hier-body-params
	   :params hier-child-params)))



;;need to add error checking that hierarchical names don't exceed 1024 chars
;;could probably eliminate owner parameter
(defun flatten-instance (parent owner symbol-table no-flattens )
  ;;(declare (optimize (speed 3) (safety 0) (debug 0)))
  (format t "Flattening ~a " (getf parent :name) )
  
  (let*
      (
       ;;find the body of the subckt declaration
       (decl-body
	(find-if #'(lambda (x) (string= (getf x :subckt-name)
					(getf parent :prototype)))
		 symbol-table))
       ;;(msg (princln "Found decl body"))
       ;;get rid of the local subcircuit definitions
       (body-instances
	(remove-if #'(lambda (x) (member :subckt-name x))
		   (getf decl-body :elements)))

       ;;probably everything below here should be split into a composition of functions

       ;;(msg (dbg body-instances))
       ;;rename instantiated elements inside the declaration body
       (names-hierarchicalized-body-instances
	(mapcar #'(lambda (x)
		    (rplaf x :name (concatenate 'string 
						(getf x :name) 
						":" 
						;;hierarchical-instance-name)))
						(getf parent :name))))
		body-instances))
       ;;(msg (dbg names-hierarchicalized-body-instances))
       ;;rename elements' locals (pin names and element references
       (locals-hierarchicalized-body-instances
	;; (mapcar #'(lambda (child)
	;; 	    (rplaf child
	;; 		   :locals
	;; 		   (mapcar #'(lambda (local)
	;; 			       (concatenate 'string
	;; 					    local
	;; 					    ":"
	;; 					    (getf parent :name)))
	;; 			   (getf child :locals))))
	;; 	names-hierarchicalized-body-instances))
	(mapcar #'(lambda (child)
		    (hierarchicalize-locals child
					    parent
					    decl-body))
		 names-hierarchicalized-body-instances))

       ;;parameters from subcircuit declaration line and body need to be made
       ;; available to the body instances pulled out
       (params-hierarchicalized-body-instances
	(pmapcar #'(lambda (child) 
		     (hierarchicalize-params child
					     (getf parent :params)
					     (getf decl-body :decl-params)
					     (getf decl-body :params))
		     )
		 locals-hierarchicalized-body-instances))

       ;;things with value (resistance capacitance etc) still refer to the 
       ;; declaration line and subcircuit body parameters, so substitute
       ;; the hierarchicalized parameters in
       (values-hierarchicalized-body-instances
	(mapcar #'hierarchicalize-value
		params-hierarchicalized-body-instances)))

    (format t "~%")
    ;;mutually recurse to flatten the updated stuff
    (nconc (list (list :comment 
		       (concatenate 'string "*BEGIN " (getf parent :name))))
	   (flatten-elements values-hierarchicalized-body-instances
			      '()
			      (concatenate 'string
					   ;;(getf instance :name)
					   (regex-replace "^([^:]+)(:.*)$" 
							  (getf parent :name)
							  "\\1")
					   ":"
					   owner)
			      symbol-table
			      no-flattens)
	   (list (list :comment 
		       (concatenate 'string "*END " (getf parent :name)))))))

(defun flatten-model (element owner symbol-table )
  ;;;;(declare (optimize (speed 3) (safety 0) (debug 0)))
  (let*
      ((owner-decl 
	(find-if #'(lambda (x) (string= (getf x :subckt-name) owner)) 
		 symbol-table))
       (hierarchicalized-name (concatenate 'string 
					   (getf element :model-name)
					   ":"
					   owner))
       ;;colon on the end will mess it up
       (trimmed-name (subseq hierarchicalized-name 
			     0 
			     (- (length hierarchicalized-name) 1)))
       )
    (hierarchicalize-params (rplaf element :model-name 
				   trimmed-name)
			    (getf owner-decl :decl-params)
			    (getf owner-decl :params))))



;;loop over elements of a subckt flattening when apropriate
(defun flatten-elements (elements stack owner symbol-table no-flattens )
    ;;(declare (optimize (speed 3) (safety 0) (debug 0)))
  (cond
    ((eql elements '()) (nreverse stack))
    ;;instance to flatten
    ((should-flattenp (car elements) symbol-table no-flattens)
     (flatten-elements 
      (cdr elements)
      (nreconc (flatten-instance (car elements) owner symbol-table no-flattens)
	       stack)
      owner
      symbol-table
      no-flattens))
    ;;model to flatten
    ((member :model-name (car elements))
     (flatten-elements (cdr elements)
		       ;;(nreconc (flatten-model (car elements) owner)
		       ;;         stack)
		       (cons (flatten-model (car elements) owner symbol-table)
			     stack)
		       owner
		       symbol-table
		       no-flattens))
    ;;otherwise cons to stack and keep going
    (t
     (flatten-elements (cdr elements)
		       (cons (car elements) stack)
		       owner
		       symbol-table
		       no-flattens))))

;; ;;loop over elements of a subckt flattening when apropriate
;; (defun flatten-elements (elements stack owner symbol-table no-flattens)
;;     ;;(declare (optimize (speed 3) (safety 0) (debug 0)))
;;   (cond
;;     ((eql elements '()) (nreverse stack))
;;     ;;instance to flatten
;;     ((should-flattenp (car elements) symbol-table no-flattens)
;;      (flatten-elements 
;;       (cdr elements)
;;       (nreconc (flatten-instance (car elements) owner symbol-table no-flattens)
;; 	       stack)
;;       owner
;;       symbol-table
;;       no-flattens))
;;     ;;model to flatten
;;     ((member :model-name (car elements))
;;      (flatten-elements (cdr elements)
;; 		       ;;(nreconc (flatten-model (car elements) owner)
;; 		       ;;         stack)
;; 		       (cons (flatten-model (car elements) owner symbol-table)
;; 			     stack)
;; 		       owner
;; 		       symbol-table
;; 		       no-flattens))
;;     ;;otherwise cons to stack and keep going
;;     (t
;;      (flatten-elements (cdr elements)
;; 		       (cons (car elements) stack)
;; 		       owner
;; 		       symbol-table
;; 		       no-flattens))))

;;flattens the subcircuit declaration of dut within ast
(defun flat-ast (ast dut no-flattens)
  ;;(declare (optimize (speed 3) (safety 0) (debug 0)))
  (let* (;;find instances within the elements of dut
	 (dut-decl
	  (find-if #'(lambda (x) (string= (getf x :subckt-name) dut)) ast))
	 (dut-elements (getf dut-decl :elements))
	 ;;collect all subckt declarations to build symbol table
	 (global-subckts
	  (remove-if-not #'(lambda (x) (member :subckt-name x)) ast))
	 (local-subckts
	  (remove-if-not #'(lambda (x) (member :subckt-name x)) dut-elements))
	 (symbol-table (append global-subckts local-subckts))
	 ;;(msg (princln "Got symbol table"))
	 ;;collect global params to pass to flattening subroutines
	 ;; (global-params 
	 ;;  (getf (car ast)
	 ;; 	:global-params))
	 ;; (msg (dbg global-params))
	 ;;recursively flatten child elements
	 (flattened-dut-elements
	  (flatten-elements dut-elements '() "" symbol-table no-flattens))
	 ;;substitute flattened elements into dut-decl
	 (flattened-dut-decl
	  (rplaf (copy-tree dut-decl) :elements flattened-dut-elements))
	 (result (nsubstitute flattened-dut-decl dut-decl ast)))
    result))
    

;; ;;flattens the subcircuit declaration of dut within ast
;; (defun flat-ast (ast dut no-flattens)
;;   ;;(declare (optimize (speed 3) (safety 0) (debug 0)))
;;   (let* (;;find instances within the elements of dut
;; 	 (dut-decl
;; 	  (find-if #'(lambda (x) (string= (getf x :subckt-name) dut)) ast))
;; 	 (dut-elements (getf dut-decl :elements))
;; 	 ;;collect all subckt declarations to build symbol table
;; 	 (global-subckts
;; 	  (remove-if-not #'(lambda (x) (member :subckt-name x)) ast))
;; 	 (local-subckts
;; 	  (remove-if-not #'(lambda (x) (member :subckt-name x)) dut-elements))
;; 	 (symbol-table (append global-subckts local-subckts))
;; 	 ;;(msg (princln "Got symbol table"))
;; 	 ;;collect global params to pass to flattening subroutines
;; 	 (global-params 
;; 	  (find-if #'(lambda (x) (getf x :global-params)) ast))
;; 	 ;;recursively flatten child elements
;; 	 (flattened-dut-elements
;; 	  (flatten-elements dut-elements '() "" symbol-table no-flattens))
;; 	 ;;substitute flattened elements into dut-decl
;; 	 (flattened-dut-decl
;; 	  (rplaf (copy-tree dut-decl) :elements flattened-dut-elements))
;; 	 (result (nsubstitute flattened-dut-decl dut-decl ast)))
;;     result))
    
