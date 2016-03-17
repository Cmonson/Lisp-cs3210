(defun nfactorial (n)
(cond ((or (= n 0) 
            (= n  1))
	     1)
	(t (* n 
	      (nfactorial (- n 1 ))))
	 )
	)