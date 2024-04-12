programa
{
	
	funcao inicio()
	{
		real colisoes[2][2], posicoes[2][2]
		logico colisao = falso




		para(inteiro i = 0; i < 2; i++)
		{
			para(inteiro x = 0; x < 2; x++)
			{
				se(x == 0)
				{
					escreva("Digite a posição x do ", i+1, "° jogador: " )
					leia(posicoes[i][x])
					escreva("Digite o comprimento do ", i+1,"° jogador: ")
					leia(colisoes[i][x])
				}
				senao
				{
					escreva("Digite a posição y do ", i+1, "° jogador: ")
					leia(posicoes[i][x])
					escreva("Digite a altura do ", i+1, "° jogador: ")
					leia(colisoes[i][x])
				}
			}
		}


		se(posicoes[0][0] <= posicoes[1][0] + colisoes[1][0]/2 e posicoes[0][0] >= posicoes[1][0] - colisoes[1][0]/2)
		{
			se(posicoes[0][1] <= posicoes[1][1] + colisoes[1][1]/2 e posicoes[0][1] >= posicoes[1][1] - colisoes[1][1]/2)
			{
				colisao = verdadeiro
			}
		}
		
		se(posicoes[0][0] + colisoes[0][0]/2 >= posicoes[1][0] - colisoes[1][0]/2 e posicoes[0][0] + colisoes[0][0]/2 <= posicoes[1][0] + colisoes[1][0]/2)
		{
			se(posicoes[0][1] + colisoes[0][1]/2 <= posicoes[1][1] + colisoes[1][1]/2 e posicoes[0][1] + colisoes[0][1]/2 >= posicoes[1][1] - colisoes[1][1]/2)
			{
				colisao = verdadeiro
			}
		}

		se(posicoes[0][0] + colisoes[0][0]/2 >= posicoes[1][0] - colisoes[1][0]/2 e posicoes[0][0] + colisoes[0][0]/2 <= posicoes[1][0] + colisoes[1][0]/2)
		{
			se(posicoes[0][1] - colisoes[0][1]/2 >= posicoes[1][1] - colisoes[1][1]/2 e posicoes[0][1] - colisoes[0][1]/2 <= posicoes[1][1] + colisoes[1][1]/2)
			{
				colisao = verdadeiro
			}
		}

		se(posicoes[0][0] - colisoes[0][0]/2 >= posicoes[1][0] - colisoes[1][0]/2 e posicoes[0][0] - colisoes[0][0]/2 <= posicoes[1][0] + colisoes[1][0]/2)
		{
			se(posicoes[0][1] + colisoes[0][1]/2 <= posicoes[1][1] + colisoes[1][1]/2 e posicoes[0][1] + colisoes[0][1]/2 >= posicoes[1][1] - colisoes[1][1]/2)
			{
				colisao = verdadeiro
			}
		}

		se(posicoes[0][0] - colisoes[0][0]/2 >= posicoes[1][0] - colisoes[1][0]/2 e posicoes[0][0] - colisoes[0][0]/2 <= posicoes[1][0] + colisoes[1][0]/2)
		{
			se(posicoes[0][1] - colisoes[0][1]/2 >= posicoes[1][1] - colisoes[1][1]/2 e posicoes[0][1] - colisoes[0][1]/2 <= posicoes[1][1] + colisoes[1][1]/2)
			{
				colisao = verdadeiro
			}
		}
		
		se(colisao == falso)
		{
			escreva("Os objetos não estão colidindo.")
		}
		senao
		{
			escreva("Os objetos estão colidindo.")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {colisoes, 6, 7, 8}-{posicoes, 6, 23, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */