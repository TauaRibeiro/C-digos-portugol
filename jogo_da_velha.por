programa
{
	//Incompleto e ainda precisa de ajustes.
	funcao inicio()
	{
		inteiro espacos_vazios[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}, disponivel = 9
		inteiro decisao
		caracter espacos[3][3] = {{' ', ' ', ' '}, {' ', ' ', ' '}, {' ',' ',' '}}
		logico vitoria = falso, x = verdadeiro, loop = verdadeiro
		enquanto(vitoria == falso e disponivel > 0)
		{
			para(inteiro linha = 0; linha < 3; linha++)
			{
				para(inteiro coluna = 0; coluna < 3; coluna++)
				{
					se(espacos_vazios[linha][coluna] != 0)
					{
						escreva('[', espacos_vazios[linha][coluna], ']')
					}
					senao
					{
						escreva('[', espacos[linha][coluna], ']')
					}
				}
				escreva("\n")
				
			}
			se(x == verdadeiro)
			{
				escreva("Digite o número do espaço que gostaria de por o 'X': ")
				enquanto(loop == verdadeiro)
				{
					leia(decisao)
					disponivel--
					se(decisao <= 3 e espacos_vazios[0][decisao-1] != 0)
					{
						espacos_vazios[0][decisao-1] = 0
						espacos[0][decisao-1] = 'X'
						loop = falso
					}
					senao se(decisao <= 6 e espacos_vazios[1][decisao-4] != 0)
					{
						espacos_vazios[1][decisao-4] = 0
						espacos[1][decisao-4] = 'X'
						loop = falso
					}
					senao se(decisao <= 9 e espacos_vazios[2][decisao-7] != 0)
					{
						espacos_vazios[2][decisao-7] = 0
						espacos[2][decisao-7] = 'X'
						loop = falso
					}
					senao{escreva("\nEscolha inválida, tente novamente: ")}
				}
				limpa()
				loop = verdadeiro
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1242; 
 * @DOBRAMENTO-CODIGO = [11];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */