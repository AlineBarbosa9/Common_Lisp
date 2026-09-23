(defun tam*(lst n)
    (cond
        ((null lst) n)
        (t ( tam* (cdr lst) (+ n 1)))))

(defun tam (lst)(tam* lst 0))

(defun pos_meio* (lst tam n)
  (cond
    ((null lst) nil)
    ((equal n (floor tam 2))
     (car lst))
    (t
     (pos_meio* (cdr lst) tam (+ n 1)))))

(defun pos_meio (lst)
  (pos_meio* lst (tam lst) 0))
