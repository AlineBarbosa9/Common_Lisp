(defun parl (lst)
    (cond
        ((null lst) nil)
        ((evenp (car lst))
            (cons (car lst) (parl (cdr lst))))
        (t (parl (cdr lst)))))

(write (parl '(1 2 3 4 5 6)))
