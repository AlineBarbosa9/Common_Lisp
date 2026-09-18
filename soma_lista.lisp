(defun soma-lst (lst)
  (cond ((null lst) 0) 
        (t (+ (car lst) (soma-lst (cdr lst))))))


