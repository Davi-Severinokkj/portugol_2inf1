programa {
  inclua biblioteca Matematica

  funcao inicio() {
    cadeia nomeCliente = "Davi Severino Oliveira de Souza"
    cadeia tipoDeConta = "Conta Poupança"
    inteiro numeroDeConta = 3089832123
    inteiro saldoConta = 2000, opcoes, valorDeposito, valorTransferencia
    inteiro escolhas

    escreva("=====================================\n")
    escreva("        BEM-VINDO AO SISTEMA        \n")
    escreva("         DE TRANSAÇÕES BANCÁRIAS    \n")
    escreva("=====================================\n")
    escreva("Titular da Conta: " + nomeCliente + "\n")
    escreva("Número da Conta:  " + numeroDeConta + "\n")
    escreva("Tipo de Conta:    " + tipoDeConta + "\n")
    escreva("Saldo Inicial:    R$" + saldoConta + "\n")

    enquanto (verdadeiro) {
      escreva("-------------------------------------\n")
      escreva("MENU DE OPÇÕES:\n")
      escreva("1 - Consultar Saldo\n")
      escreva("2 - Realizar Depósito\n")
      escreva("3 - Efetuar Transferência\n")
      escreva("4 - Juros Compostos\n")
      escreva("5 - Encerrar Sessão\n")      
      escreva("-------------------------------------\n")
      escreva("Informe a opção desejada: \n")
      leia(opcoes)
      escreva("-------------------------------------\n")

      se (opcoes == 1) {
        escreva("[ CONSULTA DE SALDO ]\n")
        escreva("Saldo atual: R$" + saldoConta + "\n")

      } senao se (opcoes == 2) {
        escreva("[ DEPÓSITO EM CONTA ]\n")
        escreva("Informe o valor a ser depositado: \n")
        leia(valorDeposito)
        saldoConta = saldoConta + valorDeposito
        escreva("Depósito de R$" + valorDeposito + " realizado com sucesso.\n")
        escreva("Novo saldo: R$" + saldoConta + "\n")

      } senao se (opcoes == 3) {
        escreva("[ TRANSFERÊNCIA BANCÁRIA ]\n")
        escreva("Informe o valor a ser transferido: \n")
        leia(valorTransferencia)
        se (valorTransferencia <= saldoConta) {
          saldoConta = saldoConta - valorTransferencia
          escreva("Transferência de R$" + valorTransferencia + " efetuada com sucesso.\n")
          escreva("Saldo remanescente: R$" + saldoConta + "\n")
        } senao {
          escreva("Operação não realizada: saldo insuficiente.\n")
          escreva("Seu saldo atual é de R$" + saldoConta + "\n")
        }

      } senao se (opcoes == 5) {
        escreva("Sessão encerrada com sucesso. Agradecemos a preferência!\n")
        escreva("-------------------------------------\n")
                

      } senao se (opcoes == 4){
        escreva("É para você mesmo? (Digite 1)\nÉ para a sua namorada gata? (Digite 2)\n")
        leia(escolhas)

        se (escolhas == 1) {
          real montante, capitalInicial, taxaDeJuros, tempoDeAplicacao
          escreva("-------------------------------------\n")
          escreva("Informe o capital inicial (C): ")
          leia(capitalInicial)
          escreva("Informe o número de parcelas (t): ")
          leia(tempoDeAplicacao)

          taxaDeJuros = 0.20 // 20% ao mês
          montante = capitalInicial * (Matematica.potencia(1 + taxaDeJuros, tempoDeAplicacao))
          escreva("Montante após " + tempoDeAplicacao + " meses, com juros de 20% a.m.: R$" + montante + "\n")

        } senao se (escolhas == 2) {
          real montante, capitalInicial, taxaDeJuros, tempoDeAplicacao
          escreva("-------------------------------------\n")
          escreva("Informe o capital inicial (C): ")
          leia(capitalInicial)
          escreva("Informe o número de parcelas (t): ")
          leia(tempoDeAplicacao)

          taxaDeJuros = 0.05 // 5% ao mês
          montante = capitalInicial * (Matematica.potencia(1 + taxaDeJuros, tempoDeAplicacao))
          escreva("Montante após " + tempoDeAplicacao + " meses, com juros de 5% a.m.: R$" + montante + "\n")

        } senao {
          escreva("Opção inválida para o tipo de aplicação.\n")
        }
      }

    }
  }
}