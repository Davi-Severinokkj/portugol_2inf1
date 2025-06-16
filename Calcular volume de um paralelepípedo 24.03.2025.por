programa {
  funcao inicio() {
    real alturaRetangulo, larguraRetangulo, baseRetangulo, volume
    
    escreva("\n===== Cálculo do Volume de um Paralelepípedo =====\n")

    escreva("\nDigite a altura: ")
    leia(alturaRetangulo)
    
    enquanto (alturaRetangulo <= 0) {
      escreva("Altura inválida! Digite um valor maior que zero: ")
      leia(alturaRetangulo)
    }

    escreva("Digite a largura: ")
    leia(larguraRetangulo)

    enquanto (larguraRetangulo <= 0) {
      escreva("Largura inválida! Digite um valor maior que zero: ")
      leia(larguraRetangulo)
    }

    escreva("Digite a base: ")
    leia(baseRetangulo)

    enquanto (baseRetangulo <= 0) {
      escreva("Base inválida! Digite um valor maior que zero: ")
      leia(baseRetangulo)
    }

    // Cálculo do volume
    volume = alturaRetangulo * larguraRetangulo * baseRetangulo

    escreva("\nO volume do paralelepípedo é: " + volume + " unidades cúbicas.\n")
  }    
}
