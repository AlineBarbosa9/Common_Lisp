(defun maior*(lst mai)
    (cond
        ((null lst) mai)
        ((>= (car lst) mai)(maior*(cdr lst)(car lst)))
        (t(maior*(cdr lst) mai))))

(defun maior (lst)(maior* (cdr lst) (car lst)))

(write (maior '(1 2 3 4 5 6 -1)))

