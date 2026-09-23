(defun insertion*(lst lac)
    (cond
        ((null lst) lac)
        (t (let*((elt (car lst))
        (lnew (insere elt lac)))
    (insertion* (cdr lst)) lnew))))

(defun insertion (lst)(insertion* lst nil))

(defun insere (elt lst)
    (cond 
        ((null lst)(list elt))
        ((<= elt (car lst)) (cons elt lst))
        (t(cons (car lst) (insere elt (cdr lst))))))


