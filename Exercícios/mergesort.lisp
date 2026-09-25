(defun merge (l1 l2)
  (cond
    ((null l1) l2)
    ((null l2) l1)
    ((<= (car l1) (car l2))
     (cons (car l1)
           (merge (cdr l1) l2)))
    (t
     (cons (car l2)
           (merge l1 (cdr l2))))))

(defun subl (lst ini fim)
  (cond
    ((null lst) nil)
    ((>= ini fim) nil)
    ((> ini 0)
     (subl (cdr lst)
           (- ini 1)
           (- fim 1)))
    (t
     (cons (car lst)
           (subl (cdr lst)
                 0
                 (- fim 1))))))

(defun mergesort (lst)
  (cond
    ((null lst) nil)
    ((<= (length lst) 1) lst)
    (t
     (let* ((meio (floor (length lst) 2))
            (esq (subl lst 0 meio))
            (dir (subl lst meio (length lst))))
       (merge (mergesort esq)
              (mergesort dir))))))

(write (mergesort '(3 1 2 5 4)))
