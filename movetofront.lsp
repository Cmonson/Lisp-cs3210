;; Casey Monson -CSI 3210 - Spring 2016
;;=====================================
;;Move to front: calls my member to see if is containde in the list.
;; if it is it removes it from the list and adds it to the front
;;parameters w - number ls - list of numbers
;;limitations:
;;			1.no error checking

(defun moveToFront (w ls)
(cond 
((null ls) nil)
((myMember w ls) (cons w (remove w ls)))
((not (myMember w ls)) (cons w ls))
)
)

;;myMember: recursivly looks at a list lst for the value i
;;Parameters: i number 
;; lst list of numbers
(defun myMember (i lst)
(cond
((null lst) nil)
((equal i (car lst)) t)
(t (myMember i (cdr lst)))
)
)

;;Test Data
;;------------------------------------------------
;;list that dosen't hold the value 5 '(3 2 1)	 (5 3 2 1)
;;list that contains the value   5 '(2 3 5 1)	  (5 2 3 1)