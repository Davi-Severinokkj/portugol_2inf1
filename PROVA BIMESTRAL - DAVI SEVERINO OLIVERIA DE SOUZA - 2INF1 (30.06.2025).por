programa {
  funcao inicio() {
    
    real transportValue = 350
    real grossSalary, inssDiscount = 0, irrfDiscount = 0
    inteiro numChildren
    cadeia fullName
    real transportDiscount, childDeduction = 189.59
    real netSalary, irrfBase, transportPay = 0

    escreva("=========================================\n")
    escreva("         BEM-VINDO AO SISTEMA            \n")
    escreva("=========================================\n")

    escreva("Qual o seu nome completo? ")
    leia(fullName)

    escreva("Qual o seu salário bruto? ")
    leia(grossSalary)

    escreva("Quantos dependentes (filhos) você tem? ")
    leia(numChildren)

    transportDiscount = grossSalary * 0.06

    se(transportDiscount > transportValue) {
      escreva("\nNão haverá pagamento de vale-transporte e nem o desconto.\n")
      transportDiscount = 0
      transportPay = 0
    } senao {
      transportPay = transportValue
      escreva("\nVocê receberá vale-transporte no valor de R$ " + transportPay + "\n")
    }

    se(grossSalary <= 1518) {
      inssDiscount = grossSalary * 0.075
    } senao se(grossSalary <= 2793.88) {
      inssDiscount = grossSalary * 0.09
    } senao se(grossSalary <= 4190.83) {
      inssDiscount = grossSalary * 0.12
    } senao se(grossSalary <= 5157.41) {
      inssDiscount = grossSalary * 0.14
    }

    irrfBase = grossSalary - inssDiscount - (numChildren * childDeduction)

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

    netSalary = grossSalary - inssDiscount - irrfDiscount - transportDiscount

    escreva("\n=========================================\n")
    escreva("         RELATÓRIO DE PAGAMENTO          \n")
    escreva("=========================================\n")
    escreva("Empresa: SeverinoTech Sistemas Ltda.\n")
    escreva("Funcionário: " + fullName + "\n")
    escreva("Salário Bruto: R$ " + grossSalary + "\n")
    escreva("Número de Dependentes: " + numChildren + "\n")
    escreva("Desconto do INSS: R$ " + inssDiscount + "\n")
    escreva("Desconto do IRRF: R$ " + irrfDiscount + "\n")

    se(transportPay > 0) {
      escreva("Vale-Transporte Recebido: R$ " + transportPay + "\n")
      escreva("Desconto do Vale-Transporte: R$ " + transportDiscount + "\n")
    } senao {
      escreva("Vale-Transporte: Não recebido\n")
    }

    escreva("Salário Líquido: R$ " + netSalary + "\n")
    escreva("=========================================\n")
  }
}
