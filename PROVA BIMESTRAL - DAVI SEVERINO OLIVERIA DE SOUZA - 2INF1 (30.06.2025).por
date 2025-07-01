programa {
  funcao inicio() {
    
    // Variável para controlar se o usuário quer continuar ou sair
    inteiro option = 1
    
    // Enquanto o usuário não escolher sair (digitando 0), o sistema continua rodando
    enquanto(option != 0) {

      // Valor fixo do vale-transporte
      real transportValue = 350
      
      // Variáveis principais do cálculo
      real grossSalary, inssDiscount = 0, irrfDiscount = 0
      inteiro numChildren
      cadeia fullName
      
      // Valor do desconto por dependente e outras variáveis auxiliares
      real transportDiscount, childDeduction = 189.59
      real netSalary, irrfBase, transportPay = 0

      // Tela de boas-vindas
      escreva("=========================================\n")
      escreva("         BEM-VINDO AO SISTEMA            \n")
      escreva("=========================================\n")

      // Coleta de dados do funcionário
      escreva("Qual o seu nome completo? ")
      leia(fullName)

      escreva("Qual o seu salário bruto? ")
      leia(grossSalary)

      escreva("Quantos dependentes (filhos) você tem? ")
      leia(numChildren)

      // Cálculo do desconto do vale-transporte (6% do salário)
      transportDiscount = grossSalary * 0.06

      // Se o desconto for maior do que o valor do transporte, não tem pagamento nem desconto
      se(transportDiscount > transportValue) {
        escreva("\nNão haverá pagamento de vale-transporte e nem o desconto.\n")
        transportDiscount = 0
        transportPay = 0
      } senao {
        // Caso contrário, recebe o valor e é feito o desconto
        transportPay = transportValue
        escreva("\nVocê receberá vale-transporte no valor de R$ " + transportPay + "\n")
      }

      // Cálculo do desconto do INSS conforme a faixa salarial
      se(grossSalary <= 1518) {
        inssDiscount = grossSalary * 0.075
      } senao se(grossSalary <= 2793.88) {
        inssDiscount = grossSalary * 0.09
      } senao se(grossSalary <= 4190.83) {
        inssDiscount = grossSalary * 0.12
      } senao se(grossSalary <= 5157.41) {
        inssDiscount = grossSalary * 0.14
      }

      // Cálculo da base do IRRF (salário - INSS - dependentes)
      irrfBase = grossSalary - inssDiscount - (numChildren * childDeduction)

      // Cálculo do IRRF de acordo com a base e alíquotas + deduções
      se(irrfBase <= 2259.20) {
        irrfDiscount = 0
      } senao se(irrfBase <= 2826.65) {
        irrfDiscount = (irrfBase * 0.075) - 169.44
      } senao se(irrfBase <= 3751.05) {
        irrfDiscount = (irrfBase * 0.15) - 381.44
      } senao se(irrfBase <= 4664.68) {
        irrfDiscount = (irrfBase * 0.225) - 662.77
      } senao {
        irrfDiscount = (irrfBase * 0.275) - 896.00
      }

      // Cálculo final do salário líquido, subtraindo todos os descontos
      netSalary = grossSalary - inssDiscount - irrfDiscount - transportDiscount

      // Impressão do relatório de pagamento do funcionário
      escreva("\n=========================================\n")
      escreva("         RELATÓRIO DE PAGAMENTO          \n")
      escreva("=========================================\n")
      escreva("Empresa: SeverinoTech Sistemas Ltda.\n")
      escreva("Funcionário: " + fullName + "\n")
      escreva("Salário Bruto: R$ " + grossSalary + "\n")
      escreva("Número de Dependentes: " + numChildren + "\n")
      escreva("Desconto do INSS: R$ " + inssDiscount + "\n")
      escreva("Base de cálculo do IRRF: R$ " + irrfBase + "\n")
      escreva("Desconto do IRRF: R$ " + irrfDiscount + "\n")

      // Exibe informações do vale-transporte, se houver
      se(transportPay > 0) {
        escreva("Vale-Transporte Recebido: R$ " + transportPay + "\n")
        escreva("Desconto do Vale-Transporte: R$ " + transportDiscount + "\n")
      } senao {
        escreva("Vale-Transporte: Não recebido\n")
      }

      escreva("Salário Líquido: R$ " + netSalary + "\n")
      escreva("=========================================\n")

      // Pergunta se deseja calcular outro salário
      escreva("Deseja calcular outro salário? (1 Para 'Sim' | 0 Para 'Não'): ")
      leia(option)
    }

    // Mensagem final de saída
    escreva("Programa encerrado. Até mais!\n")
  }
}
