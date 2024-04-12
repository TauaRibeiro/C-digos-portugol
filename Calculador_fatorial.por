programa
{
	
	funcao inicio()
	{
	inteiro num, multi, total
	multi = 1
	total = 1
	escreva("Digite o número que gostaria de calcular o fatorial:")
	leia(num)
	enquanto (multi <= num)
	{
		total = total*multi
		multi++
	}
	escreva("O fatorial do número é igual a ", total)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */