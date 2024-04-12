programa
{
	
	funcao inicio()
	{
		inteiro ddd[]= {61, 71, 11, 21, 32, 19, 27, 31}, contador, entrada, i
		cadeia destinos[]= {"Brasília", "Salvador", "São Paulo", "Rio de Janeiro", "Juíz de Fora", "Campinas",
						"Vitoria", "Belo Horizonte"}
		logico achou = falso
		escreva("---------------------------------------\n")
		escreva("DDD			Destination\n\n")
		para (i = 0; i < 8; i++)
		{
			escreva(ddd[i], "\t\t\t", destinos[i], "\n")
		}
		escreva("---------------------------------------\n")
		escreva("Digite o DDD do seu destino: ")
		leia(entrada)
		
		para (contador = 0; achou == falso e contador < 8; contador++)
		{
			se (ddd[contador] == entrada)
			{
				escreva("Seu destino será ", destinos[contador], ".")
				achou = verdadeiro
			}
		}
		se (achou == falso)
		{
			escreva("DDD não encontrado.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 722; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */