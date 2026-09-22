(defun busca (lst elt n)
    (cond
        ((null lst)nil)
        ((equal elt (car lst)) n)
        (t(busca (cdr lst) elt (+ n 1)))))

(write (busca '(1 2 3 4 5) 4 0))