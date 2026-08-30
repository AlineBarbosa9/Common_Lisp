; Soma 2 + 2 e imprime o resultado na tela
(format t "~A~%" (+ 2 2))

; Subtrai 3 de 10 e imprime o resultado
(format t "~A~%" (- 10 3))

; Divide 10 por 3 e imprime o resultado
; Como são números inteiros, o Lisp mantém o resultado exato: 10/3
(format t "~A~%" (/ 10 3))

; Divide 3 por 6 e imprime o resultado na tela 1/2
(format t "~A~%" (/ 3 6))

; Multiplica 256 por 256 e imprime o resultado
(format t "~A~%" (* 256 256))

; Calcula a raiz quadrada de 49
; O resultado é 7.0 porque SQRT retorna um número de ponto flutuante
(format t "~A~%" (sqrt 49))

; Calcula o valor absoluto de -666
; O resultado é 666
(format t "~A~%" (abs -666))


