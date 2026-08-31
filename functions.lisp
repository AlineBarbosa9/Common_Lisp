; Cria a Função SOMA1
(defun soma1 (n) (+ 1 n))

; Cria a Função SOMA2
(defun soma2 (n) (+ 2 n))

; Versão Alternativa de SOMA2
(defun soma2v (n)(soma1(soma1 n)))

; Verifica se Número == 2, com 1 Input
(defun doisp (n)(equal 2 n))

; Cria a Função Sub2
(defun sub2 (n)(- n 2))

; Doisp em Função de Zerop e Sub2
(defun doispp (n)(zerop (sub2 n)))

; Função Metade de Duas Formas Distintas
(defun metade1 (n)(/ n 2))
(defun metade2 (n)(- n (/ n 2)))

; Retorna T se n maior que 9
(defun maior9 (n)(> n 9))

; Função MaisumP
(defun maisump (x y)(equal x (+ y 1)))

; Função MaisdoisP
(defun maisdoisp (x y)(equal x (+ y 2)))

; Função MaisodoisP com -
(defun maisdoisp2 (x y) (equal 2 (- x y)))

; Função MEDIA
(defun media (x y)(/(+ x y) 2))

; Função MaisMetade
(defun maismetade (x y)(> x (/ y 2)))

; Função Diferente
(defun diferentep (x y)
  (not (equal x y)))