programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> p
	funcao inicio()
	{
		cadeia palavras[] = {"senai", "inteiro", "vetor", "vitoria"}, palavra, x
		caracter deci, letra, letras[7]
		inteiro vidas, num = 0, compri[] = {5, 7, 5, 7}, acertos
		logico vitoria, achou

		faca
		{
			vitoria = falso
			palavra = palavras[u.sorteia(0, 3)]
			palavra = palavras[0]
			vidas = 5
			para(inteiro i = 0; i < 7; i++)
			{
				letras[i] = ' '
			}
			para(inteiro i = 0; i < 4; i++)
			{
				se(palavra == palavras[i])
				{
					num = i
					pare
				}
			}
			faca
			{
				acertos = 0
				para(inteiro i = 0; i < compri[num]; i++)
				{
					escreva("[", letras[i],"] ")
				}
				escreva("\n\nDigite uma letra: ")
				leia(letra)
				x = p.caracter_para_cadeia(letra)
				x = t.caixa_baixa(x)
				letra = p.cadeia_para_caracter(x)
				achou = falso
				para(inteiro i = 0; i < compri[num]; i++)
				{
					se(t.obter_caracter(palavra, i) == letra)
					{
						letras[i] = t.obter_caracter(palavra, i)
						achou = verdadeiro
					}
				}
				se(achou == falso)
				{
					escreva("\nNão tem a letra ", letra, "\n")
					vidas--
					escreva("Você tem ", vidas, " chance(es).\n")
					u.aguarde(2000)
					limpa()
				}
				para(inteiro i = 0; i < compri[num]; i++)
				{
					se(letras[i] == t.obter_caracter(palavra, i))
					{
						acertos++
					}
				}
				se(acertos == compri[num])
				{
					vitoria = verdadeiro
					escreva("Você acertou!!!")
					u.aguarde(2000)
				}
				limpa()
			}enquanto(vitoria == falso e vidas > 0)
			faca
			{
				escreva("Deseja parar? [S/N]  ")
				leia(deci)
			}enquanto(deci != 's' e deci != 'S' e deci != 'n' e deci != 'N')
		}enquanto(deci != 's' e deci != 'S')
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */