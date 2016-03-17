(defun flatten (lst)
  (cond 
   ((null lst) nil)
   ((null (car lst)) (flatten (cdr lst)))
   ((atom (car lst)) (cons (car lst) (flatten (cdr lst))))
   (t (append (flatten (car lst)) (flatten (cdr lst))))
  )
)