programa
{
	inclua biblioteca Util-->u
	funcao inicio()
	{
		real r1, r2, req, rn
		inteiro contador, num, limite
		caracter deci
		escreva("--------------------------------------------\n")
		escreva("CALCULADORA REQ PARALELO\n")
		escreva("--------------------------------------------\n")
		u.aguarde(1000)
		limite = 2
		contador = 3
		escreva("Digite o valor da 1° resistência: ")
		leia(r1)
		escreva("Digite o valor da 2° resistência: ")
		leia(r2)
		req = (r1 * r2) / (r1 + r2)
		faca
		{
			deci = ' '
			escreva("A resistência equivalente será de ", req, " Ohms\n")
			escreva("-------------------------------------------\n")
			u.aguarde(1000)
			enquanto(deci != 'N' e deci != 'n' e deci != 'S' e deci != 's')
			{
				escreva("Deseja continuar? [S/N] ")
				leia(deci)	
			}
			se(deci == 'S' ou deci == 's')
			{
				escreva("Deseja calcular mais quantas resistências? ")
				leia(num)
				limite += num
				para(contador; contador <= limite; contador++)
				{
					escreva("Digite o valor da ", contador, "° resistência: ")
					leia(rn)
					req = (req * rn) / (req + rn)
				}
			}	
		}enquanto(deci != 'n' e deci != 'N')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 853; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */