(defun menores (lst pivo)
  (cond
    ((null lst) nil)
    ((<= (car lst) pivo)
     (cons (car lst)
           (menores (cdr lst) pivo)))
    (t
     (menores (cdr lst) pivo))))

(defun maiores (lst pivo)
  (cond
    ((null lst) nil)
    ((> (car lst) pivo)
     (cons (car lst)
           (maiores (cdr lst) pivo)))
    (t
     (maiores (cdr lst) pivo))))

(defun quicksort (lst)
  (cond
    ((null lst) nil)
    (t
     (let ((pivo (car lst)))
       (append
        (quicksort (menores (cdr lst) pivo))
        (list pivo)
        (quicksort (maiores (cdr lst) pivo)))))))

(write (quicksort '(4 5 3 1 2)))


