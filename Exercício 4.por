programa {
  funcao inicio() {
    real combu, distanciaTotal, consumo
    escreva("Digite a distância total percorrida pelo automóvel em Km: ")
    leia(distanciaTotal)
    escreva("Digite a quantidade de combustível usada pelo automóvel em Litros: ")
    leia(combu)

    consumo = distanciaTotal / combu

    escreva("O consumo médio será de " + consumo + "Km/L")
  }
}
