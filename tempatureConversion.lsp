	(defun convert (temp)
	   (cond 
		((not (listp temp)) nil)
		((not (numberp (car temp))) nil)
		((equal (car (cdr temp)) 'F) (* (/ 5 9) (- (car temp) 32)))
		((equal (car (cdr temp)) 'C) (+ 32 (* (/ 9 5) (car temp))))
		(t nil)
	   )
	)