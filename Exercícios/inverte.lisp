(defun inverte*(lst lac)
    (cond
        ((null lst) lac)
        (t(inverte*(cdr lst)(cons (car lst) lac)))))

(defun inverte (lst)(inverte* lst nil))

(write (inverte '(1 2 3 4 5)))