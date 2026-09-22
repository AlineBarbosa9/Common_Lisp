(defun car_string (caract string pos)
  (cond
    ((= pos (length string)) nil)
    ((char= caract (char string pos)) t)
    (t (car_string caract string (+ pos 1)))))

(write (car_string #\z "casa"))