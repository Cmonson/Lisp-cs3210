(defun myMember (i lst)
	(cond
		((null lst) nil)
		((equal i (car lst)) t)
		(t (myMember i (cdr lst)))
	)
)

