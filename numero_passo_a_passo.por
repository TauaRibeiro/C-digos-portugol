programa
{
	
	funcao inicio()
	{
		inteiro inicial, fim, passo, conta
		escreva("Digite o número inicial: ")
		leia(inicial)
		escreva("Digite o número final: ")
		leia(fim)
		escreva("Digite o passo de incremeno: ")
		leia(passo)
		conta = passo
		para(inteiro i = inicial ; i <= fim ; i++)
		{
			se(conta == passo)
			{
				escreva(i)
				se(i != fim){escreva("... ")}
				conta = 1
			}
			senao{conta++}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {conta, 6, 31, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */