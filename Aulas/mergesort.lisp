(defun split (lst)
  (split* lst nil nil))

(defun split* (lst l1 l2)
  (cond
    ((null lst)
     (list l1 l2))
    ((null (cdr lst))
     (list (cons (car lst) l1) l2))
    (t
     (split* (cddr lst)
             (cons (car lst) l1)
             (cons (cadr lst) l2)))))

(defun inter (l1 l2)
  (cond
    ((null l1) l2)
    ((null l2) l1)
    (t
     (let* ((e1 (car l1))
            (e2 (car l2)))
       (cond
         ((<= e1 e2)
          (cons e1 (inter (cdr l1) l2)))
         (t
          (cons e2 (inter l1 (cdr l2)))))))))

(defun ms (lst)
  (cond
    ((null lst) nil)
    ((null (cdr lst)) lst)
    (t
     (let* ((dupla (split lst))
            (l1 (first dupla))
            (l2 (second dupla)))
       (inter (ms l1) (ms l2))))))

(write (ms '(1 0 95 -8 7 5 10 4)))

