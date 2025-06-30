programa {
  funcao inicio() {

    inteiro vale_Trans = 350, salaryBrute, childs
    cadeia name

    escreva("=========================================\n")

    escreva("\n      BEM-VINDO AO SISTEMA           \n")

    escreva("=========================================\n")
    
    escreva("Qual o seu nome completo? ")
    leia(name)

    escreva("Qual o seu salário bruto? ")
    leia(salaryBrute)

    escreva("Quantos dependentes (filhos) você tem? ")
    leia(childs)

    escreva("=========================================\n")
    escreva("Recebendo seus dados...\n")
    escreva("=========================================\n")
    escreva("Seu nome é: " + name + "\n")
    escreva("Seu salário bruto é: " + salary_brute + "\n")
    escreva("Você tem " + childs + " filhos \n")
    escreva("=========================================\n")

    inteiro discount, inss

    discount = salaryBrute * 6 / 100

    se(var > vale_Trans){
      escreva("Não haverá pagamento de vale-transporte e nem o desconto." )
    }

    senao{
      escreva("Você terá o seu pagamento! ")
    }

    enquanto(salaryBrute <= 1.518){

      inss = salaryBrute * 7.5 / 100

      escreva("O desconto do INSS será de " + inss + "\n")

      se(salaryBrute  ){

      }
    }
  }
}