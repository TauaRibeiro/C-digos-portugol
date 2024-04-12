programa
{
	inclua biblioteca Texto --> t
	funcao inicio()
	{
		inteiro caracteres, espacos = 50, num
		cadeia palavra
		escreva("Digite uma palavra: ")
		leia(palavra)
		escreva("Digite um número: ")
		leia(num)
		caracteres = t.numero_caracteres(palavra)
		escreva(palavra, " ")
		para(inteiro i = 0; i < espacos - caracteres; i++)
		{
			escreva("-")
		}
		escreva(" ", num)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */