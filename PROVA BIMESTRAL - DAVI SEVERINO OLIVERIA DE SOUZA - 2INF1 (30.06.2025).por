programa {
  funcao inicio() {

    real valeTrans = 350, salaryBrute, childs, discount, inss, optionInss, optionIRRF, irrf
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

    discount = salaryBrute * 6 / 100

    se(discount > valeTrans){
      escreva("Não haverá pagamento de vale-transporte e nem o desconto." )
    }

    senao{
      escreva("Você terá o seu pagamento! ")
    }

    escreva("\n=========================================\n")
    escreva("             Desconto do INSS")
    escreva("\n=========================================\n")

    escreva("O seu salário é \n 1 - 1.518 \n 2 - 1.518,01 até 2.793,88 \n 3 - 2.793,89 até 4.190,83 \n 4 - 4.190,84 até 5.157,41\n")
    leia(optionInss)
    
    se(optionInss == 1){

      inss = salaryBrute * 0.075

      escreva("O desconto do INSS será de " + inss + "\n")
           
    } senao se(optionInss == 2){

        inss = salaryBrute * 0.09
       
        escreva("O desconto do INSS será de " + inss + "\n")

    } senao se(optionInss == 3){

      inss = salaryBrute * 0.12

      escreva("O desconto do INSS será de " + inss + "\n")

    } senao se(optionInss == 4){
      inss = salaryBrute * 0.14
     
      escreva("O desconto do INSS será de " + inss + "\n")
    } 

    escreva("\n=========================================\n")
    escreva("             Desconto do IRRF")
    escreva("\n=========================================\n")

        escreva("O seu salário é \n 1 - 2.259,20 \n 2 - 2.259,21  até 2.826,65 \n 3 - 2.826,66 até 3.751,05 \n 4 - 3.751,06 até 4.664,68 \n 5 - Acima de 4.664,68\n" )
    leia(optionIRRF)
    
    childs = 189.59
    
    childs = salaryBrute - childs

    se(optionIRRF == 1){
                
    } senao se(optionIRRF == 2){

        irrf = salaryBrute * 0.075 - 169.44 - childs

    } senao se(optionIRRF == 3){

      irrf = salaryBrute * 0.15 - 381.44

    } senao se(optionIRRF == 4){
      irrf= salaryBrute * 0.255 - 662.77
     
    } senao se(optionIRRF == 5){      
      irrf = salaryBrute * 0.275 - 896
    }



       
  }
}