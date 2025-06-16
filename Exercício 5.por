programa {
  funcao inicio() {
    cadeia nome
    real salFixo, totalVendas, comissao

    escreva("Digite o seu nome: ")
    leia(nome)
    escreva("Digite o total de vendas efetudas por você mensalmente: ")
    leia(totalVendas)
    escreva("Qual o seu salário fixo em reais?: ")
    leia(salFixo)

    comissao = totalVendas * (15/100)

    escreva("O seu nome é " + nome + ", o seu salário fixo é " + salFixo + " e sua comissão é R$ " + comissao)
  }
}
