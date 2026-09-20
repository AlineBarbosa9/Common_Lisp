;(defun npri (n)
;  (cond
;    ((eq n 0) nil)
;    (t (cons n (npri (- n 1))))))


(defun n-nat* (i n)
  (cond
    ((> i n) nil)
    (t (cons i (n-nat* (+ 1 i) n)))))

(defun n-nat (n)
  (n-nat* 1 n))

(write (n-nat 100))
