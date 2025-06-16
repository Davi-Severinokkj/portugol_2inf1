programa {
  funcao inicio() {
    real metros, quilometros, hectometros, decimetros, centimetros
    
    escreva("Escreva uma distância em metros: ")
    leia(metros)

    // Abaixo estão os algoritmos criados com aritmética para os cálculos
    quilometros = metros / 1000
    hectometros = metros / 100
    decimetros = metros * 10
    centimetros = metros * 100

    // Quebra de linha para o WebStudio
    escreva("A distância em Quilômetros é: ", quilometros, "\n")
    escreva("A distância em Hectômetros é: ", hectometros, "\n")
    escreva("A distância em Decímetros é: ", decimetros, "\n")
    escreva("A distância em Centímetros é: ", centimetros, "\n")
  }
}
