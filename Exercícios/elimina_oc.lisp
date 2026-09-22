(defun elimina_oc (lst elt)
    (cond
        ((null lst) nil)
        ((equal elt (car lst)) (elimina_oc (cdr lst) elt))
        (t(cons(car lst)(elimina_oc (cdr lst) elt)))))

(write (elimina_oc '(1 1 1 1 2 3) 1))