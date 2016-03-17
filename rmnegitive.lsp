;; Casey Monson -CSI 3210 - Spring 2016
;;=====================================
;;rmnegitive: Constructor that calls rmnegitives with a list of numbers and an empty list
;;parameters lst - list of numbers
;;limitations:
;;			1.no error checking with non ints

(defun rmnegitive (ls)
	(rmnegitives ls nil)
	)
	
;;rmnegitives: takes the list from rmnegitive and null and only copys the correct value to ls2
;;parameters ls - list of numbers
;; ls2 - list that the positive numbers will go to
(defun rmnegitives (ls ls2)
	(cond
	((null ls) ls2)
	((<= (car ls) 0)
	     (rmnegitives (cdr ls) ls2))
	(t (rmnegitives (cdr ls) (cons (car ls) ls2))
	 )
	)
)

;;Test Data
;;------------------------------------------------
;;nil  '() 			nil
;;No negitive values  '(1 5 6 8)  '(1 5 6 8)
;;All negitive values  '(-1 -5 -6 -8) '(1 5 6 8)
;;Mix of positve and negitve values '(-5 -3 2 5 4) '(5 3 2 5 4)