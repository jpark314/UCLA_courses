;
; CS161 Spring 2016: Graph coloring to SAT conversion
;
; All functions you need to write are marked with 'EXERCISE' in their header comments.
; Same rules apply regarding Lisp functions you are allowed to use.
; In fact, you do not need a lot of Lisp functions to finish this assignment.
;

;;;;;;;;;;;;;;;;;;;;;;
; General util.
;
(defun reload()
  (load "hw4.lsp")
  );end defun

; EXERCISE: Fill this function.
; returns the index of the variable
; that corresponds to the fact that 
; "node n gets color c" (when there are k possible colors).
;
; given from the spec, variable index = (n-1)*k + c
(defun node2var (n c k)
  (+ (* (- n 1) k) c)
  )

; EXERCISE: Fill this function
; returns *a clause* for the constraint:
; "node n gets at least one color from the set {c,c+1,...,k}."
;
(defun at-least-one-color (n c k)
  (cond ; set initial condition
    ((< k 1) nil) ; if k is smaller than 1, can't assign any color index
    ((< k c) nil) ; if argument c exceeds k (maximum number of colors), return nil
    ((= k c) (list (node2var n k k))) ; when color index and maximum color index is the same, return clause
    (t (append (list (node2var n c k)) (at-least-one-color n (+ c 1) k)))
    ))

; EXERCISE: Fill this function
; returns *a list of clauses* for the constraint:
; "node n gets at most one color from the set {c,c+1,...,k}."
;
(defun at-most-one-color (n c k)
  (cond ; set initial condition
    ((< k 1) nil) ; if k is smaller than 1, can't assign any color index
    ((< k c) nil) ; if argument c exceeds k (maximum number of colors), return nil
    (t (get-comb (at-least-one-color n c k)))
    ))

;; created some helper functions to get generate-note-clauses
; at-most-one-color returns a list of clauses as we have to consider cases to generate 
; color combinations of at-most-one-color function
(defun get-comb (lists)
  (cond ; set initial condition
    ((< (length lists) 2) nil) ; if the length of list is smaller than 2, return nil
    (t (append (get-comb2 (car lists) (cdr lists)) (get-comb (cdr lists))))
    ))

;; another helper function to help get-comb
; we have to look at possible color combinations of c in each element in the list
(defun get-comb2 (c lists)
  (cond ; set initial condition 
    ((null lists) nil) ; if list is null, return nil
    (t (append (list (list (- 0 c) (- 0 (car lists)))) (get-comb2 c (cdr lists))))
    ))

; EXERCISE: Fill this function
; returns *a list of clauses* to ensure that
; "node n gets exactly one color from the set {1,2,...,k}."
;
(defun generate-node-clauses (n k)
  ;; return a list of clauses that constrain node n to be colored with exactly one color
  (append (list (at-least-one-color n 1 k)) (at-most-one-color n 1 k) ; takes argument n 1 k for one color
  ))

; EXERCISE: Fill this function
; returns *a list of clauses* to ensure that
; "the nodes at both ends of edge e cannot have the same color from the set {1,2,...,k}."
;
(defun generate-edge-clauses (e k)
  ; this function should return a list of clauses that constrain node n to be colored with exactly one color
  (get-clause e 1 k) ; with one color
  )

;; created a helper function to get generate-edge-clauses
(defun get-clause (e c k) ; arguments take e, c ,k
  (cond ; set initial condition
    ((< k c) nil) ; if argument c exceeds k (maximum number of colors), return nil
    (t (append (list (list (* (node2var (first e) c k) -1) (* (node2var (second e) c k) -1))) (get-clause e (+ c 1) k)))
    ;; get the clause for colors in an edge (x, y), negate that by 1 and append
    ; the clause to the remaining function
    ))

;; I created a helper function for generate-edge-clauses
; 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Your exercises end here. Below are top-level
; and utility functions that you do not need to understand.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 
; Top-level function for converting the graph coloring problem
; of the graph defined in 'fname' using k colors into a SAT problem.
; The resulting SAT problem is written to 'out-name' in a simplified DIMACS format.
; (http://www.satcompetition.org/2004/format-solvers2004.html)
;
; This function also returns the cnf written to file.
; 
; *works only for k>0*
;
(defun graph-coloring-to-sat (fname out-name k)
  (progn
    (setf in-path (make-pathname :name fname))
    (setf in (open in-path :direction :input))
    (setq info (get-number-pair-from-string (read-line in) #\ ))
    (setq cnf nil)
    (do ((node 1
	       (+ node 1)
	       ))
	((> node (car info)))
      (setq cnf (append (generate-node-clauses node k) cnf))
      );end do
    (do ((line (read-line in nil 'eof)
	       (read-line in nil 'eof)))
	((eql line 'eof) (close in))
      (let ((edge (get-number-pair-from-string line #\ )))
	(setq cnf (append (generate-edge-clauses edge k) cnf))
	);end let
      );end do
    (close in)
    (write-cnf-to-file out-name (* (car info) k) cnf)
    (return-from graph-coloring-to-sat cnf)
    );end progn  
  );end defun

;
; A utility function for parsing a pair of integers.
; 
(defun get-number-pair-from-string (string token)
  (if (and string token)
      (do* ((delim-list (if (and token (listp token)) token (list token)))
            (char-list (coerce string 'list))
            (limit (list-length char-list))
            (char-count 0 (+ 1 char-count))
            (char (car char-list) (nth char-count char-list))
            )
           ((or (member char delim-list)
                (= char-count limit))
            (return
               (if (= char-count limit)
                   (list string nil)
                   (list (parse-integer (coerce (butlast char-list (- limit char-count))
                                 'string))
                         (parse-integer (coerce (nthcdr (+ char-count 1) char-list) 'string))
			 )))))))

;
; Writes clause to file handle 'out'.
;
(defun write-clause-to-file (out clause)
  (cond ((null clause) (format out "0~%"))
	(t (progn 
	     (format out "~A " (car clause))
	     (write-clause-to-file out (cdr clause))
	     );end progn
	   );end t
	);end cond
  );end defun

;
; Writes the formula cnf with vc variables to 'fname'.
;
(defun write-cnf-to-file (fname vc cnf)
  (progn
    (setf path (make-pathname :name fname))
    (setf out (open path :direction :output))
    (setq cc (length cnf))  
    (format out "p cnf ~A ~A~%" vc cc)
    (dolist (clause cnf)
      (write-clause-to-file out clause)
      );end dolist
    (close out)
    );end progn
  );end defun