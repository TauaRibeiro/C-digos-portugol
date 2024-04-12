programa
{
	
	funcao inicio()
	{
		inteiro num1, num2, dec
		escreva("Digite um número:")
		leia(num1)
		escreva("Digite mais um número:")
		leia(num2)
		escreva("Qual das operações abaixo você gostaria de realizar\n")
		escreva("1-Adição;\n2-Subtração;\n3-Multiplicação;\n4-Divisão;\n5-Módulo;\n")
		escreva("Digite o número da sua escolha:")
		leia(dec)
		escolha(dec)
		{
		caso 1:
			escreva("O resultado será ", num1+num2,"\n")
		pare
		caso 2:
			escreva("O resultado será ", num1-num2,"\n")
		pare
		caso 3:
			escreva("O resultado será ", num1*num2,"\n")
		pare
		caso 4:
			escreva("O resultado será ", num1/num2,"\n")
		pare
		caso 5:
			escreva("O resultado será ", num1%num2,"\n")
		pare
		caso contrario:
			escreva("Sinto muito, mas você digitou algo que não era esperado.\n")
		pare
		}
		escreva("FIM")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 788; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */