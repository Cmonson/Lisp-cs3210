(defun isItDivisable (n) 
  (cond
   ((equal (mod n 5) 0) t)
   (t nil)
  )
)

(defun divide (n lst)
  (cond
   ((null lst) n)
   ((not (numberp n)) nil)
   ((not (listp lst)) nil)
   ((isItDivisable (car lst)) (divide (+ 1 n) (cdr lst)))
   (t (divide n (cdr lst)))
  )
)

(defun divide-by-5 (lst) 
  (cond
   ((not (listp lst)) nil)
   (t (divide 0 lst))
  )
)