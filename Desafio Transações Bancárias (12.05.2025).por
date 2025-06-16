programa {
  funcao inicio() {
    cadeia nomeCliente = "Davi Severino Oliveira de Souza"
    cadeia tipoDeConta = "Conta Poupança"
    inteiro numeroDeConta = 3089832123
    inteiro saldoConta = 2000, opcoes, valorDeposito, valorTransferencia

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
      escreva("4 - Encerrar Sessão\n")
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

      } senao se (opcoes == 4) {
        escreva("Sessão encerrada com sucesso. Agradecemos a preferência!\n")
        escreva("-------------------------------------\n")
        pare

      } senao {
        escreva("[ ERRO ] Opção inválida. Por favor, escolha entre 1 e 4.\n")
      }
    }
  }
}
