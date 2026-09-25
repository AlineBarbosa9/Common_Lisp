(defun insere (lst elt)
  (cond
    ((null lst) (list elt))
    ((>= (car lst) elt)
     (cons elt lst))
    (t
     (cons (car lst)
           (insere (cdr lst) elt)))))

(defun insertion (lst)
  (cond
    ((null lst) nil)
    (t
     (insere (insertion (cdr lst))
             (car lst)))))

(write(insertion '(2 1 3 5 4)))