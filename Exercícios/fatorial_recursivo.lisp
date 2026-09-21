(defun fat (n)
    (cond
        ((equal n 0) 1)
        ((equal n 1) 1)
        (t(* n (fat(- n 1))))))

(write (fat 5))