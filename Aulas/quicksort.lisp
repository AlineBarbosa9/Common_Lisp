(defun part (p lst) (part* p lst nil nil))

(defun part* (p lst lmen lmai)
    (cond
        ((null lst)(list lmen lmai))
        ((<= (car lst) p)(part* p (cdr lst) (cons (car lst) lmen) lmai))
        (t(part* p (cdr lst) lmen (cons(car lst) lmai)))))

(defun qs (lst)
    (cond
        ((null lst) nil)
        ((null (cdr lst))lst)
        (t (let* ((pivot (car lst))
            (dupla (part pivot (cdr lst)))
            (lmen(first dupla))
            (lmai(second dupla)))
        (append(qs lmen))
            (list pivot)
            (qs lmai)))))