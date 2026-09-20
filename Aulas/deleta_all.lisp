(defun delall (elt lst)
  (cond
    ((null lst) nil)
    ((eql elt (car lst)) (delall elt (cdr lst)))
    (t (cons (car lst) (delall elt (cdr lst))))))


(write (delall 2 '(1 2 2 2 2 3 4)))