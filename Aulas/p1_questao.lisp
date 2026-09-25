(defun p1*(lst lac)
    (cond
        ((null lst) lac)
        ((> (car lst) 7) (cons (- (car lst) 1)(p1* (cdr lst) lac)))
        (t(cons(+ (car lst) 1) (p1*(cdr lst) lac)))))

(defun p1 (lst)(p1* lst nil))

(write (p1 '(1 2 3 7 8 9)))
