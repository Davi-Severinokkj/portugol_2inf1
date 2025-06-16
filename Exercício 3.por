programa {
  funcao inicio() {
    inteiro anoAtual, anoNascimento, idade
    escreva("Digite o ano em que estamos: ")
    leia(anoAtual)
    escreva("Digite o ano em que você nasceu: ")
    leia(anoNascimento)

    idade = anoAtual - anoNascimento

    escreva("Você tem " + idade + " anos.")

  }
}
