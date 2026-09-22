(defun tam_str* (str n)
  (cond
    ((string= str "") n)
    (t (tam_str* (subseq str 1) (+ n 1)))))

(defun tam_str (str)
  (tam_str* str 0))

(write(tam_str "abacaxi"))