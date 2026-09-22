(defun soma_lista* (lst n)
    (cond
        ((null lst) n)
        (t(soma_lista* (cdr lst) (+ n (car lst))))))

(defun soma_lista (lst)(soma_lista* lst 0))

(write (soma_lista '(1 2 3 4 5 6 7 8 9 10)))
