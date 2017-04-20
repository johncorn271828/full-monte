;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(in-package :jcorn.full-monte.parser)
(declaim (optimize (debug 0) (safety 0) (speed 3)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun parse-element (line)
  (let*
      ((tokens (split "\\s+" (string-trim " 	" line)))
       (keyvals (remove-if-not #'(lambda (tok) (search "=" tok)) tokens))
       (pairs (mapcar #'(lambda (tok) (split "=" tok)) keyvals))
       (other-toks (remove-if #'(lambda (tok) (search "=" tok)) tokens))
       ;;(msg (progn (princ "Parsing element ") (princln (car other-toks))))
       )
    ;;(princ msg)
    (cond
      ;;subcircuit instantiations
      ((ciswp line "X")
       (list :name (car other-toks)
	     :prototype (car (last other-toks))
	     :locals (cdr (butlast other-toks))  ;scoped
	     :params pairs))
      ;;Ideal sources have type and value at the end
      ((or (ciswp line "V") (ciswp line "I"))
       (list :name (car other-toks)
	     :locals (list (elt other-toks 1) (elt other-toks 2))
	     :type (elt other-toks 3)
	     :value (elt other-toks 4)))
      ;;Dependent sources and mutual inductors have two references and a value
      ((or (ciswp line "E") (ciswp line "G") (ciswp line "H") (ciswp line "F")
	   (ciswp line "K"))
       (list :name (car other-toks)
	     :locals (list (elt other-toks 1) (elt other-toks 2))
	     :value (elt other-toks 3)
	     :params pairs))

      ;; ;;Resistors are tricky, some have a local model name instead of a value
      ;; ;;Case here is a named element in that slot      
      ((and (ciswp line "R")
	    (or (all-matches "0-9" (subseq (fourth tokens) 0 1))
		(all-matches "\'" (subseq (fourth tokens) 0 1))))
       (list :name (car other-toks)
      	     :locals (subseq other-toks 1 3)
      	     :value (elt other-toks 3)
      	     :params pairs))
      ;; ;; Case here is a number or value string in that slot:
      ((ciswp line "R")
       (list :name (car other-toks)
	     :locals (subseq other-toks 1 4)))
			     


      ;;Capacitors and inductors have value and optional IC at end
      ((or (ciswp line "C") (ciswp line "L"))
       (if (= 5 (length other-toks))
	   (error "Wasn't expecting initial conditions in C/L")
	   (list :name (car other-toks)
		 :locals (subseq other-toks 1 3)
		 :value (elt tokens 3))))
      ;;Switches, diodes and transistors have type at the end
      ((or (ciswp line "S") (ciswp line "W") 
	   (ciswp line "D") 
	   (ciswp line "Q") (ciswp line "M") (ciswp line "J"))
       (list :name (car other-toks)
	     :locals (cdr (butlast other-toks))
	     :type (car (last other-toks))))
      ;;global params (see special case inside parse-subckt)
      ((ciswp line ".param")
       (list :global-params pairs))
      ;;model declarations
      ((ciswp line ".model")
       (list :model-name (second other-toks)
	     :type (third tokens)
	     :params pairs))
      ;;other directives I expect but don't handle
      ((or (ciswp line ".prot") (ciswp line ".option") (ciswp line ".unprot")
	   (ciswp line ".temp"))
       (list :misc-directive line))
      ;;warn about other directives
      ((ciswp line ".")
       (progn 
	 (princ "Didn't understand directive ") 
	 (princ line)
	 (princ " so I'm leaving it alone")
	 (list :misc-directive line)))
      ;;other things are probably an error
      (t 
       (progn
	 (error (concatenate 'string 
			     "Didn't expect " (princ-to-string line))))))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun parse-subckt (lines)
  (labels
    ((subckt-loop (lines ast)
       (cond
	 ;;end of declaration
	 ((ciswp (car lines) ".end")
	  (cons (cdr lines)
		(rplaf (rplaf ast :params (nreverse (getf ast :params)))
		       :elements (nreverse (getf ast :elements)))))
	 ;;beginning of nested subckt declaration
	 ((ciswp (car lines) ".subckt")
	  (let*
	      ((sub-subckt (parse-subckt lines))
	       ;;note plan here to return cons of remaining lines and ast
	       (remaining-lines (car sub-subckt))
	       (subckt-ast (cdr sub-subckt)))
	    ;;parsed-subckt in hand, cons it and keep going
	    (subckt-loop remaining-lines 
			 (rplaf ast 
				:elements (cons subckt-ast 
						(getf ast :elements))))))
	 ;;treat .param lines as separately scoped inside subckt declarations
	 ((ciswp (car lines) ".param")
	  (let*
	      ((kv-tokens (all-matches-as-strings "[^\\s=]+=[^\\s=]+" 
						  (car lines)))
	       (pairs (mapcar #'(lambda (tok) (split "=" tok)) kv-tokens)))
	    (subckt-loop (cdr lines)
			 (rplaf (rplaf ast :params (nconc pairs (getf ast :params)))
				:elements (getf ast :elements)))))
	 ;;other elements passed along
	 (t (subckt-loop (cdr lines)
			 (rplaf ast
				:elements (cons (parse-element (car lines))
						(getf ast :elements))))))))
    ;;upon initial call, parse first line then call subckt-loop on rest
    (let*
      ((subckt-name (regex-replace "(?i)\\.subckt\\s+(\\S+?)\\s.*" 
				   (car lines) "\\1"))
       ;;(msg (progn (princ "Parsing subckt ") (princln subckt-name)))
       (tokens (split "\\s+" (string-trim " 	" (car lines))))
       (decl-pins (cddr (remove-if #'(lambda (tok) (search "=" tok)) tokens)))
       (keyvals (remove-if-not #'(lambda (tok) (search "=" tok)) tokens))
       (pairs (mapcar #'(lambda (tok) (split "=" tok)) keyvals)))
      ;;(princ msg)
      (princ "parsing " )(princln subckt-name)
      (subckt-loop (cdr lines)
		   (list :subckt-name subckt-name
			 :decl-pins decl-pins
			 :decl-params pairs
			 :params '()
			 :elements '())))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun collect-global-params (ast)
  (labels
   ((collector (unvisited-branches collected-params visited-branches)
      (cond
	;;no more branches to visit, make global params first
	((eql unvisited-branches '()) 
	 (cons (list :global-params collected-params)
	       (nreverse visited-branches)))
	;;atoms haven't been parsed
	((atom (car unvisited-branches))
	 (collector (cdr unvisited-branches) 
		    collected-params
		    (cons (car unvisited-branches) visited-branches)))
	;;see a global param, collect it
	((member :global-params (car unvisited-branches))
	 (collector (cdr unvisited-branches)
		    (nconc (getf (car unvisited-branches) :global-params)
			   collected-params)
		    visited-branches))
	;;otherwise add to pile and move on
	(t (collector (cdr unvisited-branches) 
		      collected-params
		      (cons (car unvisited-branches) visited-branches))))))
    (collector ast '() '())))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun parse (lines)
  (labels 
    ((parse-loop (lines ast)
       (cond
	 ;;no more work; collect params and return
	 ((eql lines '()) (collect-global-params (nreverse ast)))
	 ;;follow subckt declaration
	 ((ciswp (car lines) ".subckt")
	  (let*
	      ((state-after-subckt-parse (parse-subckt lines))
	       (remaining-lines (car state-after-subckt-parse))
	       (subckt-ast (cdr state-after-subckt-parse)))
	    (parse-loop remaining-lines (cons subckt-ast ast))))
	 ;;everything else is parse-element-ed
	 (t (parse-loop (cdr lines) (cons (parse-element (car lines)) ast))))))
    (parse-loop lines '())))
