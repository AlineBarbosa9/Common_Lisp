(defun rev (lst)
  (cond
    ((null lst) nil)
    (t (append (rev (cdr lst))
               (list (car lst))))))

(write (rev '(1 2 3 4)))
