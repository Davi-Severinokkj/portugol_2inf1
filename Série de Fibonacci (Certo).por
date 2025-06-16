programa {
  funcao inicio() {
    inteiro a = 0
    inteiro b = 1
    inteiro c
    escreva(a, ", ", b)
    // Calcular o número de Fibonacci até 15

    para(inteiro i = 0; i<=15; i++){
      c = a + b
      escreva("" , ", ", c)
      a = b
      b = c
    }
  }
}