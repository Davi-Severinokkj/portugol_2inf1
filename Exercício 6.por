programa {
  funcao inicio() {
    real f, c
    escreva("Quantos graus estão fazendo? ")
    leia(c)
    
    // Fórmula correta de conversão de Celsius para Fahrenheit
    f = (9 * c) / 5 + 32

    // Usando vírgulas para separar texto e variáveis
    escreva("Uau! Está fazendo ", f, "°F.")
  }
}
