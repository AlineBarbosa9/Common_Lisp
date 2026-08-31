; Funções em Lisp:
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

; Predicados Simples em Lisp
; Predicados são funções usadas para fazer perguntas sobre valores.
; Em Lisp:
;   T   = verdadeiro
;   NIL = falso


; -------------------------
; numberp
; -------------------------

; Verifica se o valor é um número.
(numberp 42)
; Resultado: T
; 42 é um número.

(numberp 'casa)
; Resultado: NIL
; 'casa representa um símbolo, não um número.


; -------------------------
; symbolp
; -------------------------

; Verifica se o valor é um símbolo.

(symbolp 'rua)
; Resultado: T
; 'rua é um símbolo.

(symbolp 3.14)
; Resultado: NIL
; 3.14 é um número, não um símbolo.


; -------------------------
; zerop
; -------------------------

; Verifica se o número é igual a zero.

(zerop 0)
; Resultado: T
; 0 é igual a zero.

(zerop -34)
; Resultado: NIL
; -34 é diferente de zero.


; -------------------------
; oddp
; -------------------------

; Verifica se um número inteiro é ímpar.

(oddp 7)
; Resultado: T
; 7 é ímpar.

(oddp 8)
; Resultado: NIL
; 8 é par.


; -------------------------
; evenp
; -------------------------

; Verifica se um número inteiro é par.

(evenp 6)
; Resultado: T
; 6 é par.

(evenp 7)
; Resultado: NIL
; 7 é ímpar.


; -------------------------
; <
; -------------------------

; Verifica se o primeiro número é menor que o segundo.

(< 2 3)
; Resultado: T
; 2 é menor que 3.

(> 2 3)
; Resultado: NIL
; 2 não é maior que 3.


; -------------------------
; <=
; -------------------------

; Verifica se o primeiro número é menor ou igual ao segundo.

(<= 2 2)
; Resultado: T
; 2 é igual a 2, então a condição é verdadeira.


; -------------------------
; >=
; -------------------------

; Verifica se o primeiro número é maior ou igual ao segundo.

(>= 3 3)
; Resultado: T
; 3 é igual a 3, então a condição é verdadeira.


; -------------------------
; equal
; -------------------------

; Compara dois valores.
; Para símbolos, equal pode verificar se eles representam
; o mesmo símbolo.

(equal 'gato 'rato)
; Resultado: NIL
; 'gato e 'rato são símbolos diferentes.

(equal 'uva 'uva)
; Resultado: T
; Os dois valores representam o mesmo símbolo.


; -------------------------
; equal com números
; -------------------------

(equal 22/7 3.14)
; Resultado: NIL
; 22/7 é uma razão exata (um número racional).
; 3.14 é um número de ponto flutuante.
; Embora tenham valores matematicamente próximos,
; eles não são considerados iguais por EQUAL.


(equal 3.14 3.14)
; Resultado: T
; Os dois números de ponto flutuante possuem o mesmo valor.