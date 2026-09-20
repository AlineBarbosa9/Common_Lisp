(defun inters(l1 l2)
    (cond 
        ((null l1) nil)
        ((membrop (car l1) l2) (cons (car l1) (inters (cdr l1) l2)))
        (t (inters (cdr l1) l2))))

;(write (inters '(1 2 3 4) '(3 4 5 6)))
