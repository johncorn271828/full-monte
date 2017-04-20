(in-package :jcorn.full-monte.preprocessor)

(declaim (optimize (debug 0) (safety 0) (speed 3)))

(defun get-next-path (given-path working-dir)
  "Determine if given-path is absolute or relative and append the
   appropriate part of relative paths to working-dir to obtain next-path"
  (declare (optimize (debug 0) (safety 0) (speed 3)))
  (cond
    ;;absolute path
    ((ciswp given-path "/") given-path)
    ;;relative path with one dot
    ((ciswp given-path "./")
     (concatenate 'string working-dir (subseq given-path 2)))
    ;;relative path with two dots
    ((ciswp given-path "../")
     (concatenate 'string 
		  (regex-replace "(.*)/.*" working-dir "\\1")
		  (subseq given-path 3)))
    ;;relative path without dot
    (t (concatenate 'string working-dir given-path))))

(declaim (ftype function chase-lib-call))

(defun lib-call-fs-dfs (lines stack working-dir)
  ;;(declaim (optimize (debug 0) (safety 0) (speed 3)))
  (declare (optimize (debug 0) (safety 0) (speed 3)))
  (cond 
    ;;exit condition. Note recycling
    ((eql '() lines)
     (nreverse stack))

    ;;chase .lib calls
    ((ciswp (car lines) ".lib")
     (lib-call-fs-dfs 
      (cdr lines) 
      (nreconc (chase-lib-call (car lines) working-dir) stack)
      working-dir))

    ;;fix .option statement relative paths
    ((ciswp (car lines) ".option")
     (lib-call-fs-dfs 
      (cdr lines)
      (cons (regex-replace 
	     "([\\\"\\'])\\./([\^\\'\\\"]+)([\\'\\\"])"
	     (car lines)
	     (concatenate 'string "\\1" working-dir "\\{2}\\{3}"))
	    stack)
      working-dir))

    ;;non-lib call lines add to stack unmodified
    (t
     (lib-call-fs-dfs (cdr lines) (cons (car lines) stack) working-dir))))

;;Doesn't support relative path chasing
(defun inline-include-calls (lines)
  ;;(declaim (optimize (debug 0) (safety 0) (speed 3)))
  (declare (optimize (debug 0) (safety 0) (speed 3)))
  ;;(princln "inline-include-calls")
  (labels 
      ;;pull the directory out of an .include statement
    ((get-include-path (line)
       (regex-replace 
	"(?i)\\.include\\s+[\\\"\\'](\\S+?)[\\\"\']" line "\\1"))
     ;;iterate over lines subbing in file contents for .include calls
     (iter (lines stack)
       (cond
	 ;;out of work
	 ((eql '() lines)
	  (nreverse stack))
	 ;;replace include lines with the file's lines
	 ((ciswp (car lines) ".include")
	  (iter (cdr lines)
		(nreconc (split "\\n+" 
				(clean-slurp (get-include-path (car lines))))
			 stack)))
	 ;;other lines push to stack
	 (t (iter (cdr lines) (cons (car lines) stack))))))
    (iter lines nil)))

(defun remove-+-continuations (lines)
  ;;(declaim (optimize (debug 0) (safety 0) (speed 3)))
  (declare (optimize (debug 0) (safety 0) (speed 3)))
  ;;(princln "Removing + continuations")
  (labels
    ((iter (lines stack)
       ;;(dbg lines)
       ;;(dbg stack)
       (cond
	 ;;no more work
	 ((eql lines '()) (nreverse stack))
	 ;;dump emtpy lines
	 ((string= (car lines) "") (iter (cdr lines) stack))
	 ;;most recent addition to stack has + at end => stick the next
	 ;; line on the top of the stack and push it back
	 ((string= (subseq (car stack)
		   	   (- (length (car stack)) 1)
	           	   (length (car stack)))
	           ;;(last (car stack))
		   "+")
	  (iter (cdr lines)
		(rplaca stack
			(concatenate 'string 
				      (subseq (car stack) 
				      	     0 (- (length (car stack)) 1))
				     ;;(butlast (car stack))
				     " " (car lines)))))
	 ;;next line begins with +
	 ((ciswp (car lines) "+")
	  (iter (cdr lines)
		(rplaca stack 
			(concatenate 'string 
				     (car stack) 
				     " " 
				     (subseq (car lines) 1)))))
	 ;;other lines pushed
	 (t (iter (cdr lines) (cons (car lines) stack))))))
    (iter (cdr lines) (list (car lines)))))

(defun chase-lib-call (line &optional working-dir)
  ;;(declaim (optimize (debug 0) (safety 0) (speed 3)))
  (declare (optimize (debug 0) (safety 0) (speed 3)))
  (let* 
    ((indicated-path
      (regex-replace ".*?[\\\"\\'](\\S+)[\\\"\\'].*" 
			      line 
			      "\\{1}"))
     (next-path (get-next-path indicated-path working-dir))
     (next-dir
      (regex-replace "(.*/)[^/]+" next-path "\\1"))
     (library 
      (regex-replace 
       "(?i)\\.lib\\s+[\\'\\\"]\\S+[\\'\\\"]\\s+([^\\n\\s]+)\\s*" line "\\1"))
     (msg (progn (princ "Loading library ") (princln library)))
     (pattern
      (concatenate 'string "(?is)\\n\\.lib\\s+" library "\\s*\\n(.*?)" 
		   "\\n\\.endl\\s+"))
     (entry
      (scan-to-strings pattern (clean-slurp next-path)))
     (insertion
      (regex-replace pattern entry "\\1"))
     (new-lines
      (lib-call-fs-dfs (split "[\\n\\r]+" insertion) 
		       nil 
		       next-dir)))
    (when msg (princ ""))
    new-lines))

(defun remove-math-space (line)
  (let ((res (make-array (length line) 
			 :fill-pointer 0
			 :adjustable t
			 :element-type (array-element-type line)))
	(in-quotes nil))
    (loop for c across line do
	 (cond
	   ((equal c #\')
	    (progn
	      (setf in-quotes (not in-quotes))
	      (vector-push-extend c res)))
	   ((and (equal c #\Space) in-quotes)
	    nil)
	   (t
	    (vector-push-extend c res))))
    res))


	 
      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;This is the only exported function in this namespace
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun preprocess (lines)
  (declare (optimize (debug 0) (safety 0) (speed 3)))
  ;;(princln "Preprocessing...")
  (let*
      
    (
     ;;inline .lib calls
     (nolibs (lib-call-fs-dfs lines '() ""))
     (nonils (delete nil nolibs))
     ;(nonils (delete nil lines))
     (included (inline-include-calls nonils))
     ;;these 3 have to happen in this order because comments and empy lines
     ;;  are between +-continued lines:
     ;;remove comments
     (nocomments
      (delete-if #'(lambda (line) (ciswp line "*"))
		  included))
     ;;remove empty lines
     (noempties 
      (delete-if #'(lambda (line) (eql line ""))
		  (mapcar #'(lambda (line) (string-trim " 	" line))
			  nocomments)))
     ;;remove + line continuation syntax
     ;;(msg (princln "Removing line continuations..."))
     (nocontinues (remove-+-continuations noempties))
     ;;turn quoted math with spaces into quoted math without spaces
     (nospaces (mapcar #'remove-math-space nocontinues))
     ;;turn key space = space value into key=value
     ;;(msg (princln "Pairing keys and values..."))
     (keyvalfixed 
      (mapcar #'(lambda (line)
		  (regex-replace-all "(\\S+)(\\s*)=(\\s*)(\\S+)"
					      line "\\1=\\4"))
	      nospaces)))
    keyvalfixed))

