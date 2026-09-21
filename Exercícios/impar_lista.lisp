(defun imparl (lst)
    (cond
        ((null lst) nil)
        ((oddp (car lst))
            (cons (car lst) (imparl (cdr lst))))
        (t (imparl (cdr lst)))))

(write (imparl '(1 2 3 4 5 6)))