#|
Projeto 1 - Esta em xeque?
 
Nome: Aline Barbosa Vidal RA: 10721348
 
Exemplo:
(chess '("tcbdrbct" "pppppppp" 8 8 8 8
         "PPPPPPPP" "TCBDRBCT"))
 
Resultado: NIL
 
Legenda das peças (minúscula = preta, maiúscula = branca):
  p/P peão   c/C cavalo   b/B bispo
  t/T torre  d/D dama     r/R rei
 
Convenção do tabuleiro: a linha de índice 0 corresponde à primeira
string da lista de entrada (topo, peças pretas) e a linha de índice 7
à última (base, peças brancas). Por isso um peão preto ataca ao
avançar para uma linha de índice maior (ver peao-ataca-p).
|#
 
 
#| Converte uma string em lista de caracteres. |#
 
(defun string-lista (string pos)
  (cond
    ((= pos (length string))
     nil)
 
    (t
     (append
      (list (char string pos))
      (string-lista string (+ pos 1))))))
 
 
#| Cria uma lista com N casas vazias. |#
 
(defun casas-vazias (n)
  (cond
    ((= n 0)
     nil)
 
    (t
     (append
      (list nil)
      (casas-vazias (- n 1))))))
 
 
#| Converte uma linha do tabuleiro. |#
 
(defun transforma-linha (linha)
  (cond
    ((numberp linha)
     (casas-vazias linha))
 
    (t
     (string-lista linha 0))))
 
 
#| Converte o tabuleiro para uma lista de listas. |#
 
(defun transforma-tabuleiro (tabuleiro)
  (cond
    ((null tabuleiro)
     nil)
 
    (t
     (append
      (list (transforma-linha (car tabuleiro)))
      (transforma-tabuleiro (cdr tabuleiro))))))
 
 
#| Retorna o elemento de uma lista em determinada posição. |#
 
(defun elemento (lista pos)
  (cond
    ((null lista)
     nil)
 
    ((= pos 0)
     (car lista))
 
    (t
     (elemento
      (cdr lista)
      (- pos 1)))))
 
 
#| Retorna o conteúdo de uma casa do tabuleiro. |#
 
(defun casa (tabuleiro linha coluna)
  (elemento
   (elemento tabuleiro linha)
   coluna))
 
 
#| Procura o rei branco em uma linha. |#
 
(defun encontra-rei-linha (linha coluna)
  (cond
    ((null linha)
     nil)
 
    ((and
      (characterp (car linha))
      (char= (car linha) #\R))
     (list coluna))
 
    (t
     (encontra-rei-linha
      (cdr linha)
      (+ coluna 1)))))
 
 
#| Procura o rei branco no tabuleiro. |#
 
(defun encontra-rei (tabuleiro linha)
  (cond
    ((null tabuleiro)
     nil)
 
    (t
     (let ((resultado
            (encontra-rei-linha
             (car tabuleiro)
             0)))
 
       (cond
         ((null resultado)
          (encontra-rei
           (cdr tabuleiro)
           (+ linha 1)))
 
         (t
          (list
           linha
           (car resultado))))))))
 
 
#| Verifica se o caminho entre duas peças está livre.
   Anda uma casa por vez, na direção dada por passo-linha/passo-coluna,
   a partir de (linha, coluna) em direção a (destino-linha, destino-coluna).
   Retorna t se chegar ao destino sem encontrar nenhuma peça no caminho,
   e nil assim que encontrar uma casa ocupada antes de chegar lá. |#
 
(defun caminho-livre-p
       (tabuleiro
        linha
        coluna
        destino-linha
        destino-coluna
        passo-linha
        passo-coluna)
 
  (let ((nova-linha
         (+ linha passo-linha))
        (nova-coluna
         (+ coluna passo-coluna)))
 
    (cond
      ((and
        (= nova-linha destino-linha)
        (= nova-coluna destino-coluna))
       t)
 
      ((not
        (null
         (casa
          tabuleiro
          nova-linha
          nova-coluna)))
       nil)
 
      (t
       (caminho-livre-p
        tabuleiro
        nova-linha
        nova-coluna
        destino-linha
        destino-coluna
        passo-linha
        passo-coluna)))))
 
 
#| Verifica se um peão preto ataca o rei. |#
 
(defun peao-ataca-p
       (linha coluna rei-linha rei-coluna)
 
  (and
   (= rei-linha (+ linha 1))
   (= (abs (- rei-coluna coluna)) 1)))
 
 
#| Verifica se um cavalo preto ataca o rei. |#
 
(defun cavalo-ataca-p
       (linha coluna rei-linha rei-coluna)
 
  (let ((dl (abs (- rei-linha linha)))
        (dc (abs (- rei-coluna coluna))))
 
    (or
     (and (= dl 2)
          (= dc 1))
 
     (and (= dl 1)
          (= dc 2)))))
 
 
#| Verifica se o rei preto ataca o rei branco.
   A condição (not (and (= linha rei-linha) (= coluna rei-coluna)))
   existe para não considerar o próprio rei branco como um atacante
   de si mesmo, caso as coordenadas comparadas coincidam. |#
 
(defun rei-ataca-p
       (linha coluna rei-linha rei-coluna)
 
  (and
   (<= (abs (- rei-linha linha)) 1)
   (<= (abs (- rei-coluna coluna)) 1)
 
   (not
    (and (= linha rei-linha)
         (= coluna rei-coluna)))))
 
 
#| Verifica se uma torre preta ataca o rei. |#
 
(defun torre-ataca-p
       (tabuleiro linha coluna rei-linha rei-coluna)
 
  (cond
    ((= linha rei-linha)
     (caminho-livre-p
      tabuleiro
      linha
      coluna
      rei-linha
      rei-coluna
      0
      (if (< coluna rei-coluna) 1 -1)))
 
    ((= coluna rei-coluna)
     (caminho-livre-p
      tabuleiro
      linha
      coluna
      rei-linha
      rei-coluna
      (if (< linha rei-linha) 1 -1)
      0))
 
    (t
     nil)))
 
 
#| Verifica se um bispo preto ataca o rei. |#
 
(defun bispo-ataca-p
       (tabuleiro linha coluna rei-linha rei-coluna)
 
  (cond
    ((=
      (abs (- rei-linha linha))
      (abs (- rei-coluna coluna)))
 
     (caminho-livre-p
      tabuleiro
      linha
      coluna
      rei-linha
      rei-coluna
      (if (< linha rei-linha) 1 -1)
      (if (< coluna rei-coluna) 1 -1)))
 
    (t
     nil)))
 
 
#| Verifica se uma dama preta ataca o rei. |#
 
(defun dama-ataca-p
       (tabuleiro linha coluna rei-linha rei-coluna)
 
  (or
   (torre-ataca-p
    tabuleiro
    linha
    coluna
    rei-linha
    rei-coluna)
 
   (bispo-ataca-p
    tabuleiro
    linha
    coluna
    rei-linha
    rei-coluna)))
 
 
#| Verifica o tipo da peça e seu ataque ao rei. |#
 
(defun peca-ataca-p
       (tabuleiro peca linha coluna
        rei-linha rei-coluna)
 
  (cond
    ((char= peca #\p)
     (peao-ataca-p
      linha coluna
      rei-linha rei-coluna))
 
    ((char= peca #\c)
     (cavalo-ataca-p
      linha coluna
      rei-linha rei-coluna))
 
    ((char= peca #\b)
     (bispo-ataca-p
      tabuleiro linha coluna
      rei-linha rei-coluna))
 
    ((char= peca #\t)
     (torre-ataca-p
      tabuleiro linha coluna
      rei-linha rei-coluna))
 
    ((char= peca #\d)
     (dama-ataca-p
      tabuleiro linha coluna
      rei-linha rei-coluna))
 
    ((char= peca #\r)
     (rei-ataca-p
      linha coluna
      rei-linha rei-coluna))
 
    (t
     nil)))
 
 
#| Verifica as peças de uma linha. |#
 
(defun verifica-linha
       (tabuleiro linha coluna
        rei-linha rei-coluna)
 
  (cond
    ((= coluna 8)
     nil)
 
    ((let ((peca
            (casa tabuleiro linha coluna)))
 
       (and
        (characterp peca)
        (or
         (char= peca #\p)
         (char= peca #\c)
         (char= peca #\b)
         (char= peca #\t)
         (char= peca #\d)
         (char= peca #\r))
        (peca-ataca-p
         tabuleiro
         peca
         linha
         coluna
         rei-linha
         rei-coluna)))
 
     t)
 
    (t
     (verifica-linha
      tabuleiro
      linha
      (+ coluna 1)
      rei-linha
      rei-coluna))))
 
 
#| Verifica todas as linhas do tabuleiro. |#
 
(defun verifica-tabuleiro
       (tabuleiro linha rei-linha rei-coluna)
 
  (cond
    ((= linha 8)
     nil)
 
    ((verifica-linha
      tabuleiro
      linha
      0
      rei-linha
      rei-coluna)
     t)
 
    (t
     (verifica-tabuleiro
      tabuleiro
      (+ linha 1)
      rei-linha
      rei-coluna))))
 
 
#| Função principal do programa. |#
 
(defun chess (entrada)
 
  (let* ((tabuleiro
          (transforma-tabuleiro entrada))
 
         (posicao-rei
          (encontra-rei tabuleiro 0)))
 
    (cond
      ((null posicao-rei)
       nil)
 
      (t
       (verifica-tabuleiro
        tabuleiro
        0
        (first posicao-rei)
        (second posicao-rei))))))
#|

Exemplo de execução no SBCL:

* (load "projeto.lisp")
* (chess '("tcbdrbct" "pppppppp" 8 8 8 8 "PPPPPPPP" "TCBDRBCT"))
NIL

|#


