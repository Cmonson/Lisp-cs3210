(defun myMember (i lst)
(cond
((null lst) nil)
((equal i (car lst)) t)
(t (myMember i (cdr lst)))
)
)

(defun moveToFront (w ls)
(cond 
((null ls) nil)
((myMember w ls) (cons w (remove w ls)))
((not (myMember w ls)) (cons w ls))
)
)