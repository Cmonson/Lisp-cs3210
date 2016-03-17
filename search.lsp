;; Casey Monson -CSI 3210 - Spring 2016
;;=====================================
;;search1: Constructor that calls searcher with a list of numbers and an empty list
;;parameters lst - list of anything
;; n - interger to locate
;;limitations:
;;			1.non error checking

(defun search1 (n lst) 
  (cond
   ((not (listp lst)) nil)
   (t (searcher 0 n lst))
  )
)

;;isitvalue: checks to see if the values are the same
;;parameters: n the value from the list
;;v is the value to check aginst 

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

