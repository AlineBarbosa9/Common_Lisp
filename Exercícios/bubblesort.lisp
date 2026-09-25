(defun passada (lst)
  (cond
    ((null lst) nil)
    ((null (cdr lst)) lst)
    ((> (car lst) (car (cdr lst)))
     (cons (car (cdr lst))
           (passada (cons (car lst) (cddr lst)))))
    (t
     (cons (car lst)
           (passada (cdr lst))))))

(defun bubblesort (lst)
  (cond
    ((null lst) nil)
    ((null (cdr lst)) lst)
    (t
     (append
      (bubblesort (butlast (passada lst)))
      (last (passada lst))))))

(write (bubblesort '(4 3 1 5 2)))
