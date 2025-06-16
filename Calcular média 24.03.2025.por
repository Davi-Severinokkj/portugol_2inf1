programa {
  funcao inicio() {
    real nota1, nota2, nota3, nota4, media
    cadeia nomeAluno

    escreva("\n===== Cálculo de Média Escolar =====\n")
    
    escreva("\nDigite seu nome: ")
    leia(nomeAluno)

    escreva("\nDigite a primeira nota: ")
    leia(nota1)
    
    enquanto (nota1 < 0 ou nota1 > 10) {
      escreva("Nota inválida! Digite um valor entre 0 e 10: ")
      leia(nota1)
    }

    escreva("Digite a segunda nota: ")
    leia(nota2)

    enquanto (nota2 < 0 ou nota2 > 10) {
      escreva("Nota inválida! Digite um valor entre 0 e 10: ")
      leia(nota2)
    }

    escreva("Digite a terceira nota: ")
    leia(nota3)

    enquanto (nota3 < 0 ou nota3 > 10) {
      escreva("Nota inválida! Digite um valor entre 0 e 10: ")
      leia(nota3)
    }

    escreva("Digite a quarta nota: ")
    leia(nota4)

    enquanto (nota4 < 0 ou nota4 > 10) {
      escreva("Nota inválida! Digite um valor entre 0 e 10: ")
      leia(nota4)
    }

    // Calcula a média
    media = (nota1 + nota2 + nota3 + nota4) / 4

    escreva("\nAluno: " + nomeAluno + "\n")
    escreva("Média final: " + media + "\n")

    // Verifica se foi aprovado ou reprovado
    se (media >= 7) {
      escreva("Parabéns! Você foi aprovado! 🎉\n")
    } senao se (media >= 5) {
      escreva("Você está de recuperação. Estude mais! 📚\n")
    } senao {
      escreva("Infelizmente, você foi reprovado. 😞\n")
    }
  }
}