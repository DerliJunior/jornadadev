
# Exercício 2 — Pseudocódigo
Escreva em pseudocódigo um algoritmo para cada item:
- a. Calcular a área de um retângulo (base × altura)
- b. Verificar se um número é par ou ímpar
- c. Encontrar o maior entre três números

Dica: use as palavras Leia, Escreva, Se ... Senão e o operador `<-` para atribuir.

---

### A:
    variável base, altura, area

    escreva("Digite o tamanho da base")
    base <- leia()

    escreva("Digite o tamanho da altura")
    altura <- leia()

    area <- base * altura

    mostre(area)

### B:
    variável numero

    escreva("Digite um número")
    numero <- leia()

    se numero % 2 == 0
        mostre(verdadeiro)
    senao
        mostre(falso)

### C:
    variavel numero1, numero2, numero3, maior_numero

    escreva("Digite o 1° numero")
    numero1 <- leia()

    escreva("Digite o 2° numero")
    numero2 <- leia()

    escreva("Digite o 3° numero")
    numero3 <- leia()

    se numero1 > numero2 e numero1 > numero3
        maior_numero <- numero1
    entaose numero2 > numero1 e numero2 > numero3
        maior_numero <- numero2
    senao
        maior_numero <- numero3

    mostre(maior_numero)


