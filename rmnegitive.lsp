(defun rmnegitive (ls)
	(rmnegitives ls nil)
	)
	
	(defun rmnegitives (ls ls2)
	(cond
	((null ls) ls2)
	((<= (car ls) 0)
	     (rmnegitives (cdr ls) ls2))
	(t (rmnegitives (cdr ls) (cons (car ls) ls2))
	 )
	)
	)