(defun twin (lst)
  (twiner lst '())
)

(defun twiner (lst new)  
  (cond
   ((null lst) new)
   (t (twiner (cdr lst) (cons (car lst) (cons (car lst) new))))
  )
)

(defun untwin (lst) 
  (cond
   ((null lst) nil)
   (t (check lst 0 (length lst)))
  )
)

(defun check (lst i last)
  (cond 
   ((null lst) nil)
   ((equal i last) lst)
   ((equal (car lst) (cadr lst)) (check (append (list (car lst)) (cddr lst)) (+ i 1) last))
   (t (check (append (cdr lst) (list (car lst))) (+ i 1) last))
  )
)