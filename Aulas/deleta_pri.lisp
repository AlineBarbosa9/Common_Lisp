(defun delpri (elt lst)
  (cond
    ((null lst) nil)
    ((eql elt (car lst)) (cdr lst))
    (t (cons (car lst) (delpri elt (cdr lst))))))

(write (delpri 2 '(1 2 3 4)))
