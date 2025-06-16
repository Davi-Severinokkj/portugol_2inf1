programa {
  funcao inicio() {
    inteiro num1, num2

    escreva("Digite um número: ")
    leia(num1)
    escreva("Digite outro número: ")
    leia(num2)

   
    se(num1 < num2) {
      inteiro i = num1
      enquanto(i <= num2) {
        escreva(i, "\n")
        i++
      }
    }
   
    senao {
      inteiro i = num1
      enquanto(i >= num2) {
        escreva(i, "\n")
        i--
      }
    }
  }
}