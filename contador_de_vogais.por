programa
{
	inclua biblioteca Texto --> t
	funcao inicio()
	{
		cadeia vogais = "aeiou", frase
		caracter vogal, letra
		inteiro vezes[5], comprimento
		escreva("Digite uma frase: ")
		leia(frase)
		frase = t.caixa_baixa(frase)
		comprimento = t.numero_caracteres(frase)
		para(inteiro i = 0; i < 5; i++)
		{
			vogal = t.obter_caracter(vogais, i)
			para(inteiro x = 0; x < comprimento; x++)
			{
				letra = t.obter_caracter(frase, x)
				se(letra == vogal){vezes[i] += 1}
			}
			se(vezes[i] != 0)
			{
				escreva("A vogal ", vogal, " apareceu ", vezes[i])
				se(vezes[i] > 1){escreva(" vezes.\n")}
				senao{escreva(" vez.\n")}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */