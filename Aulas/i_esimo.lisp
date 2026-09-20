(defun iesimo (i lst)
    (cond 
    ((null lst) nil)
    ((eql i 0) nil)
    (t (cons (car lst) (iesimo(- i 1) (cdr lst))))))

(write (iesimo 3 '(1 2 3 4 5)))