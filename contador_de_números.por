programa
{
	funcao inicio()
	{
		inteiro lista[5], contador, i = 0, analise[5], num, quanti = 0 
		logico dupli
		enquanto(i < 5)
		{
			escreva("Digite o ", i+1, "° número: ")
			leia(lista[i])
			i++
		}
		i = 0
		enquanto(i < 5)
		{
			dupli = falso
			num = lista[i]
			para(inteiro x = 0; x < quanti; x++)
			{
				se(num == analise[x])
				{
					dupli = verdadeiro
				}
			}
			se(dupli == falso)
			{
				analise[quanti] = num
				quanti++
			}
			i++
		}
		i = 0
		enquanto(i < quanti)
		{
			contador = 0
			para(inteiro x = 0; x < 5; x++ )
			{
				se(lista[x] == analise[i])
				{
					contador++
				}
			}
			escreva("O número ", analise[i], " aparace ", contador, " vez(es);\n")
			i++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 710; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */