programa {
  funcao inicio() {
    real combustivelUsado, distanciaPercorrida, consumoMedio
    cadeia resposta

    escreva("Eai Sir! Bora ver o consumo médio do seu automóvel? Responda com 'sim' ou 'não': ")
    leia(resposta)    

    // Verifica se a resposta foi afirmativa
    se (resposta == "sim") {
      escreva("Ótimo! Vamos calcular o consumo. Digite a distância total percorrida pelo automóvel em Km: ")
      leia(distanciaPercorrida)

      // Valida a entrada para garantir que a distância seja positiva
      se (distanciaPercorrida <= 0) {
        escreva("Distância inválida. A distância deve ser maior que zero.")
        retorne
      }

      escreva("Agora, digite a quantidade de combustível usado pelo automóvel em Litros: ")
      leia(combustivelUsado)

      // Valida a entrada para garantir que o combustível seja maior que zero
      se (combustivelUsado <= 0) {
        escreva("Quantidade de combustível inválida. O valor deve ser maior que zero.")
        retorne
      }

      // Calcula o consumo médio
      consumoMedio = distanciaPercorrida / combustivelUsado

      escreva("O consumo médio do seu automóvel é de aproximadamente ", consumoMedio, " km/L.")
    } senao {
      escreva("Então tá bom. 😁")
    }
  }
}
