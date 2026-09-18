(defun membrop (elt lst)
  (cond
    ((null lst) nil)
    ((equal elt (car lst)) t)
    (t (membrop elt (cdr lst)))))

; (write (membrop 2 '(1 2 3)))
