
(defun duplica (lst)
  (cond
    ((null lst) nil)
    (t (cons (car lst)
             (cons (car lst)
                   (duplica (cdr lst)))))))

(write (duplica '(1 2 3 4 5)))
