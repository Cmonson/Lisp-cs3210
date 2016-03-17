;; Casey Monson -CSI 3210 - Spring 2016
;;=====================================
;;Divide by 5: Constructor and it checks to make sure it contains a list then calls 
;;parameters lst - list of numbers
;;limitations:
;;			1.none

(defun divide-by-5 (lst) 
  (cond
   ((not (listp lst)) nil)
   (t (divide 0 lst))
  )
)

;;isItDivisable: returns true if the number is divisable by 5 
;;parameters n : the number to check
(defun isItDivisable (n) 
  (cond
   ((equal (mod n 5) 0) t)
   (t nil)
  )
)

;;Divide: the helper function that counts and calls isItDivisable
;;parameters n: the number of numbers that are diviable by 5
;;lst: list of numbers
(defun divide (n lst)
  (cond
   ((null lst) n)
   ((not (numberp n)) nil)
   ((not (listp lst)) nil)
   ((isItDivisable (car lst)) (divide (+ 1 n) (cdr lst)))
   (t (divide n (cdr lst)))
  )
)

;;Test Data
;;------------------------------------------------
;;empty list	'() 	0
;;multiple values '(5 4 5 6 15 25) 4
