programa {
  funcao inicio() {
    inteiro numero

    escreva("Digite um número de 1 a 10: ")
    leia(numero)

    se (numero > 10) {
      
      inteiro i = numero
      enquanto (i >= 1) {
        escreva(i, "\n")
        i = i - 1
      }
    } senao {
      
      inteiro i = 1
      enquanto (i <= numero) {
        escreva(i, "\n")
        i = i + 1
      }
    }
  }
}
