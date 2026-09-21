(defun fib (n)
    (cond
        ((equal n 1) 1)
        ((equal n 2) 1)
        (t(+ (fib (- n 1))(fib (- n 2))))))

(write (fib 8))