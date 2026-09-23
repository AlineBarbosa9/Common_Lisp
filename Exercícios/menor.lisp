(defun menor*(lst men)
    (cond
        ((null lst) men)
        ((< (car lst) men)(menor*(cdr lst)(car lst)))
        (t(menor*(cdr lst) men))))

(defun menor (lst)(menor* (cdr lst) (car lst)))

(write (menor '(1 2 3 4 5 6 -1)))