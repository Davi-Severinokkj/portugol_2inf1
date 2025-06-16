programa {
  inclua biblioteca Matematica

  funcao inicio() {
    real delta, raizDelta, x1, x2
    inteiro a, b, c

    escreva("\nVamos calcular uma equação de segundo grau!\n")

    escreva("\nDigite o valor de A: ")
    leia(a)
    
    // Verifica se 'a' é zero, pois não seria uma equação de segundo grau
    se(a == 0) {
      escreva("\nO valor de A não pode ser 0 em uma equação de segundo grau.\n")
      retorne
    }

    escreva("\nDigite o valor de B: ")
    leia(b)
    escreva("\nDigite o valor de C: ")
    leia(c)

    escreva("\nA equação formada é: " + a + "x² + " + b + "x + " + c + " = 0\n")
    
    // Cálculo do Delta (Δ = b² - 4ac)
    delta = Matematica.potencia(b, 2) - 4 * a * c
    escreva("\nCalculando o delta: Δ = " + b + "² - 4 * " + a + " * " + c + "\n")
    escreva("Δ = " + delta + "\n")

    // Verifica se o delta é negativo
    se(delta < 0) {
      escreva("\nA equação não possui raízes reais, pois Δ é negativo.\n")
      retorne
    }

    // Cálculo da raiz do delta
    raizDelta = Matematica.raiz(delta, 2)

    // Cálculo das raízes
    x1 = (-b + raizDelta) / (2 * a)
    x2 = (-b - raizDelta) / (2 * a)

    // Exibe o resultado
    se(delta == 0) {
      escreva("\nA equação tem apenas uma raiz real: x = " + x1 + "\n")
    }
    senao {
      escreva("\nAs raízes da equação são:\n")
      escreva("x1 = " + x1 + "\n")
      escreva("x2 = " + x2 + "\n")
    }
  }
}