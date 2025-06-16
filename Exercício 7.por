programa {
  funcao inicio() {
    real valorCompra, parcelas
    cadeia resposta
    
    escreva("Bora calcular qual o valor das parcelas que você irá pagar?: ")
    leia(resposta)
    
    // Verifica se a resposta não está vazia ou nula
    se (resposta != "") {
      escreva("Digite o valor das compras em reais: ")
      leia(valorCompra)

      parcelas = valorCompra / 5

      // Usando vírgulas para separar texto e variáveis
      escreva("O valor de cada parcela será de R$" + parcelas)
    } senao {
      escreva("Nenhuma resposta foi fornecida.")
    }
  }
}