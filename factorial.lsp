;; Casey Monson -CSI 3210 - Spring 2016
;;=====================================
;;nfactorial function: takes a interger and takes the factorial 
;;parameters n - number
;;limitations:
;;			1.no error checking

(defun nfactorial (n)
(cond ((or (= n 0) 
            (= n  1))
	     1)
	(t (* n 
	      (nfactorial (- n 1 ))))
	 )
	)
	
;;test plan
;;----------------------------------------------
;;Empty list      will not work
;;Negitive number  -2 will not work by deffinition
;;interger          5   120