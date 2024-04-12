programa
{
	
	funcao inicio()
	{
		cadeia baixa[10], media[10], alta[10], tarefa
		inteiro prioridade, a = 0, m = 0, b = 0
		para(inteiro i = 0; i < 10; i++)
		{
			escreva("Digite o nome da ", i+1, "° tarefa: ")
			leia(tarefa)
			escreva("Digite o nível de prioridade da tarefa")
			escreva("\n1 -> Alta;\n2 -> Média;\n3 -> Baixa;\nDigite o número da prioridade: ")
			leia(prioridade)
			escolha(prioridade)
			{
				caso 1:
					alta[a] = tarefa
					a++
				pare
				caso 2:
					media[m] = tarefa
					m++
				pare
				caso 3:
					baixa[b] = tarefa
					b++
				pare
			}
			limpa()
		}
		escreva("A ordem das tarefas será:\n")
		para(inteiro i = 1; i <= 10; i++)
		{
			escreva(i, "° --> ")
			se(a > 0)
			{
				escreva(alta[a-1], "\n")
				a--
			}
			senao se(m > 0)
			{
				escreva(media[m-1], "\n")
				m--
			}
			senao
			{
				escreva(baixa[b-1], "\n")
				b--
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {baixa, 6, 9, 5}-{media, 6, 20, 5}-{alta, 6, 31, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */