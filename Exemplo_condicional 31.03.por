programa {
    funcao inicio() {
        real v1, v2
        
        escreva("\n====================================\n")
        escreva("       COMPARAÇÃO DE NÚMEROS       \n")
        escreva("====================================\n\n")
        
        // Entrada do primeiro número
        escreva("Por favor, insira o primeiro número: ")
        leia(v1)

        // Entrada do segundo número
        escreva("Agora, insira o segundo número: ")
        leia(v2)

        escreva("\n====================================\n")
        escreva("          RESULTADO                \n")
        escreva("====================================\n\n")

        // Comparação dos valores
        se (v1 == v2) {
            escreva("Os números são iguais: ", v1, " = ", v2, ".\n")
        } senao se (v1 > v2) {
            escreva("O número ", v1, " é maior que ", v2, ".\n")
        } senao {
            escreva("O número ", v1, " é menor que ", v2, ".\n")
        }
        
        escreva("\n====================================\n")
        escreva("   Obrigado por utilizar o programa!   \n")
        escreva("====================================\n")
    }
}
