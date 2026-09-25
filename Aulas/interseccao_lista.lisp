(defun pertence (elt lst)
  (cond
    ((null lst) nil)
    ((= elt (car lst)) t)
    (t
     (pertence elt (cdr lst)))))

(defun interseccao (l1 l2)
  (cond
    ((null l1) nil)
    ((pertence (car l1) l2)
     (cons (car l1)
           (interseccao (cdr l1) l2)))
    (t
     (interseccao (cdr l1) l2))))

(write (interseccao '(1 2 3 4) '(2 4 6 8)))

