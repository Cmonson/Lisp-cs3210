(defun isitvalue (n v) 
  (cond
   ((equal n v) t)
   (t nil)
  )
)

(defun searcher (n v lst)
  (cond
   ((null lst) n)
   ((not (numberp n)) nil)
   ((not (listp lst)) nil)
   ((isitvalue (car lst) v) (searcher (+ 1 n) v (cdr lst)))
   (t (searcher n v (cdr lst)))
  )
)

(defun search1 (y lst) 
  (cond
   ((not (listp lst)) nil)
   ((not (numberp y)) nil)
   (t (searcher 0 y lst))
  )
)