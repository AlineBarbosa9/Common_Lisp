# Common_Lisp

Repositório usado para estudo de **programação funcional e recursão** em Common Lisp, partindo do básico da linguagem até a implementação de algoritmos de ordenação.

## Objetivo

Consolidar os fundamentos de Lisp e do paradigma funcional através de exercícios práticos, com foco em:

- Sintaxe básica e manipulação de listas
- Recursão como principal ferramenta de controle de fluxo (sem laços imperativos)
- Principais funções built-in da linguagem
- Aplicação desses conceitos na implementação de algoritmos clássicos de ordenação

## Conteúdo

### Fundamentos

- Definição de funções (`defun`)
- Estruturas condicionais (`cond`, `if`, `and`, `or`)
- Manipulação de listas (`car`, `cdr`, `cons`, `append`, `list`)
- Recursão simples e recursão com acumulador
- Predicados e comparação (`null`, `atom`, `characterp`, `numberp`, `char=`, `=`)
- Manipulação de strings e caracteres

### Algoritmos de ordenação

- **Insertion sort**
- **Merge sort**
- **Quick sort**

Cada algoritmo foi implementado de forma recursiva, reforçando os conceitos de divisão de listas, chamadas recursivas e combinação de resultados (particularmente relevante em merge sort e quick sort).

## Estrutura do repositório

```
.
├── Aulas/
├── Exercícios/
└── Livro/
```

- **Aulas/** — material e exercícios acompanhando as aulas
- **Exercícios/** — exercícios práticos, incluindo os algoritmos de ordenação
- **Livro/** — exercícios e códigos baseados em *A Gentle Introduction to Symbolic Computation*

## Como executar

Os arquivos foram testados com [SBCL](http://www.sbcl.org/) (Steel Bank Common Lisp).

1. Instale o SBCL (`sudo apt install sbcl` em distros baseadas em Debian/Ubuntu).
2. No terminal, entre na pasta do repositório e abra o REPL:
   ```
   sbcl
   ```
3. Carregue o arquivo desejado:
   ```lisp
   * (load "insertion-sort.lisp")
   ```
4. Chame a função definida no arquivo com os argumentos de teste, por exemplo:
   ```lisp
   * (insertion-sort '(5 3 8 1 2))
   (1 2 3 5 8)
   ```

## Bibliografia

- Touretzky, David S. *A Gentle Introduction to Symbolic Computation*
