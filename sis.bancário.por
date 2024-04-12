programa
{
	//concertar erro com os espaços vazios das matrizes
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> p
	inclua biblioteca Util --> u
	cadeia identificacao[1000][162], senhas[1000][162], nomes[1000][162]
	funcao inicio()
	{
		para(inteiro c = 0; c < 162; c++)
		{
			para(inteiro l = 0; l < 1000; l++)
			{
				identificacao[l][c] = ""
				senhas[l][c] = ""
				nomes[l][c] = ""
			}
		}
		cadeia codigo, senha, coordenada, chave, codificado, palavra, usuario
		chave = gerador(2)
		cadastro(chave)
		limpa()
		usuario = login(chave)
		escreva("\n", usuario)
		
	}
	funcao cadeia gerador(inteiro tipo)
	{
		inteiro numero = 0, x = 0, y = 0
		caracter digito
		cadeia codigo = "", coordenada, linha = "", coluna = ""
		logico ideal = falso, virgula
		se(tipo == 1)
		{
			faca
			{
				para(inteiro i = 1; i < 6; i++)
				{
					numero = u.sorteia(0, 9)
					digito = p.inteiro_para_caracter(numero)
					codigo = t.preencher_a_esquerda(digito, i, codigo)
				}
				coordenada = hash(codigo)
				virgula = falso
				para(inteiro i = t.numero_caracteres(coordenada) - 1; i >= 0; i--)
				{
					digito = t.obter_caracter(coordenada, i)
					se(digito == ','){virgula = verdadeiro}
					senao
					{
						se(virgula == falso)
						{
							coluna = t.preencher_a_esquerda(digito, t.numero_caracteres(coluna) + 1, coluna)
						}
						senao
						{
							linha = t.preencher_a_esquerda(digito, t.numero_caracteres(linha) + 1, linha)
						}
					}
				}
				x = p.cadeia_para_inteiro(linha, 10)
				y = p.cadeia_para_inteiro(coluna, 10)
				para(inteiro i = 0; i <= x; i++)
				{
				se(identificacao[i][y] == codigo)
				{
					ideal = falso
					pare
				}
				senao{ideal =verdadeiro}
				}
			}enquanto(ideal == falso)
		}
		se(tipo == 2)
		{
			para(inteiro i = 1; i <= 120; i++)
			{
				numero = u.sorteia(0, 9)
				digito = p.inteiro_para_caracter(numero)
				codigo = t.preencher_a_esquerda(digito, i+1, codigo)
			}
			
		}
			retorne codigo
	}
	funcao cadeia hash(cadeia codigo)
	{
		inteiro coluna = 0, linha = 0, num1 = 0, num2 = 0
		cadeia x, y
		caracter digito, centro

		para(inteiro i = 0; i < 5; i++)
		{
			centro = t.obter_caracter(codigo, 2)
			se(centro == '0'){centro = '1'}
			digito = t.obter_caracter(codigo, i)
			escolha(i)
			{
			caso 0:
				digito = t.obter_caracter(codigo, i)
				num1 = p.caracter_para_inteiro(digito)
			pare
			caso 1:
				digito = t.obter_caracter(codigo, i)
				num1 *= p.caracter_para_inteiro(digito)
			pare
			caso 2:
				digito = t.obter_caracter(codigo, i+1)
				num2 = p.caracter_para_inteiro(digito)
			pare
			caso 3:
				digito = t.obter_caracter(codigo, i+1)
				num2 *= p.caracter_para_inteiro(digito)
			pare
			caso 4:
				digito = t.obter_caracter(codigo, 2)
				coluna = (num1+ num2)/p.caracter_para_inteiro(centro)
			pare
			}
		}
		para(inteiro i = 0; i < 1000; i++)
		{
			se(identificacao[i][coluna] == codigo)
			{
				linha = i
				pare
			}
			se(identificacao[i][coluna] == "")
			{
				linha = i
				pare
			}
		}
		x = p.inteiro_para_cadeia(linha, 10)
		y = p.inteiro_para_cadeia(coluna, 10)
		retorne x+','+y
	}
	funcao logico verificacao(cadeia analise, inteiro matriz, cadeia coordenada, cadeia chave)
	{
		cadeia linha = "", coluna = "", vazia[2]
		caracter digito
		inteiro x, y
		logico virgula = falso, valido = falso
		para(inteiro i = t.numero_caracteres(coordenada) - 1; i >= 0; i--)
			{
				digito = t.obter_caracter(coordenada, i)
				se(digito == ','){virgula = verdadeiro}
				senao
				{
					se(virgula == falso)
					{
						coluna = t.preencher_a_esquerda(digito, t.numero_caracteres(coluna) + 1, coluna)
					}
					senao
					{
						linha = t.preencher_a_esquerda(digito, t.numero_caracteres(linha) + 1, linha)
					}
				}
			}
			x = p.cadeia_para_inteiro(linha, 10)
			y = p.cadeia_para_inteiro(coluna, 10)
		se(matriz == 1)
		{
			para(inteiro i = 0; i <= x e valido == falso; i++)
			{
				se(cripto(senhas[i][y], 2, chave) == analise)
				{
					valido = verdadeiro
				}
			}
		}
		se(matriz == 2)
		{
			para(inteiro i = 0; i <= x e valido == falso; i++)
			{
				se(cripto(identificacao[i][y], 2, chave) == analise)
				{
					valido = verdadeiro
				}
			}
		}
		retorne valido
	}
	funcao cadastro(cadeia chave)
	{
		cadeia nome, senha, codigo, coordenada, linha = "", coluna = "", pausa
		inteiro x, y
		caracter digito
		logico virgula = falso
		escreva("Digite o seu nome completo: ")
		leia(nome)
		nome = cripto(nome, 1, chave)
		escreva("Digite uma senha de 4 dígitos: ")
		faca
		{
			leia(senha)
			se(p.cadeia_e_inteiro(senha, 10) == verdadeiro e t.numero_caracteres(senha) == 4){pare}
			limpa()
			escreva("Senha inválida..\n")
			escreva("Digite uma senha composta de apenas números e com 4 dígitos: ")
		
		}enquanto(verdadeiro)
		limpa()
		senha = cripto(senha, 1, chave)
		codigo = gerador(1)
		escreva("Cadastro realizado com sucesso, esse é o seu código de indentificação: ", codigo)
		u.aguarde(3000)
		escreva("\nEsse código será pedido junto com a senha toda vez que for fazer login.")
		u.aguarde(3000)
		escreva("\nPor favor lembre desse código e não compartilhe com nimguém.")
		u.aguarde(2000)
		escreva("\nPressione enter para continuar: ")
		leia(pausa)
		coordenada = hash(codigo)
		codigo = cripto(codigo, 1, chave)
		para(inteiro i = t.numero_caracteres(coordenada) - 1; i >= 0; i--)
			{
				digito = t.obter_caracter(coordenada, i)
				se(digito == ','){virgula = verdadeiro}
				senao
				{
					se(virgula == falso)
					{
						coluna = t.preencher_a_esquerda(digito, t.numero_caracteres(coluna) + 1, coluna)
					}
					senao
					{
						linha = t.preencher_a_esquerda(digito, t.numero_caracteres(linha) + 1, linha)
					}
				}
			}
		x = p.cadeia_para_inteiro(linha, 10)
		y = p.cadeia_para_inteiro(coluna, 10)
		nomes[x][y] = nome
		senhas[x][y] = senha
		identificacao[x][y] = codigo
	}
	funcao cadeia cripto(cadeia codificacao, inteiro tipo, cadeia chave)
	{
		cadeia simbolos = "Náé%Vq6³w5°<²,[ó¹Xe>?r1ÁDt| ö7ÇA)E=C9üÜWê	yB§ÔLQÖô0MÊuP$83ORiÉS(oZ2*pFÓG.a+¬Js#d¢f/HKI4g&h£U@jklç!zx-Ycvb_n:mT", trecho = "", digito2 = "", codigo = ""
 		cadeia inv_codigo = ""
 		inteiro comprimento = t.numero_caracteres(codificacao), metodo = 0, num = 0, ciclo = 0, posicao = 0, local = 0, tamanho = 0 
		caracter digito  
		logico avanco 
		se(tipo == 1)
		{
			para(inteiro i = 0; i < comprimento; i++)
			{
				
				se(ciclo > 40){ciclo = 0}
				digito = t.obter_caracter(codificacao, i)
				digito2 = p.caracter_para_cadeia(digito)
				posicao = t.posicao_texto(digito2, simbolos, 0)
				trecho = t.extrair_subtexto(chave ,0 + ciclo, 3 + ciclo)
				num = p.cadeia_para_inteiro(trecho, 10)
				metodo = num / 100
				num = num % 100
				tamanho = t.numero_caracteres(codigo) + 1
				se((num / 10) % 2 == 0){avanco = verdadeiro}
				senao{avanco = falso}
				num = num % 10
				se(avanco == verdadeiro)
				{
					se(posicao + metodo >= 110){local = (posicao + metodo) - 110}
					senao{local = posicao + metodo}
					digito = t.obter_caracter(simbolos, local)
					codigo = t.preencher_a_esquerda(digito, tamanho, codigo)
				}
				senao
				{
					se(posicao - metodo < 0){local = (posicao - metodo) + 110}
					senao{local = posicao - metodo}
					digito = t.obter_caracter(simbolos, local)
					codigo = t.preencher_a_esquerda(digito, tamanho, codigo)
				}
				para(inteiro x = 0; x < num; x++)
				{
					tamanho = t.numero_caracteres(codigo) + 1
					digito = t.obter_caracter(simbolos, u.sorteia(0, 109))
					codigo = t.preencher_a_esquerda(digito, tamanho, codigo)
				}
				ciclo += 3
			}
		}
		se(tipo == 2)
		{
			para(inteiro i = comprimento - 1; i >= 0; i--)
			{
				se(ciclo > 40){ciclo = 0}
				digito = t.obter_caracter(codificacao, i)
				digito2 = p.caracter_para_cadeia(digito)
				posicao = t.posicao_texto(digito2, simbolos, 0)
				trecho = t.extrair_subtexto(chave ,0 + ciclo, 3 + ciclo)
				num = p.cadeia_para_inteiro(trecho, 10)
				metodo = num / 100
				num = num % 100
				tamanho = t.numero_caracteres(inv_codigo) + 1 
				se((num / 10) % 2 != 0){avanco = verdadeiro}
				senao{avanco = falso}
				num = num % 10
				se(avanco == verdadeiro)
				{
					se(posicao + metodo >= 110){local = (posicao + metodo) - 110}
					senao{local = posicao + metodo}
					digito = t.obter_caracter(simbolos, local)
					inv_codigo = t.preencher_a_esquerda(digito, tamanho, inv_codigo)
				}
				senao
				{
					se(posicao - metodo < 0){local = (posicao - metodo) + 110}
					senao{local = posicao - metodo}
					digito = t.obter_caracter(simbolos, local)
					inv_codigo = t.preencher_a_esquerda(digito, tamanho, inv_codigo)
				}
				i -= num
				ciclo += 3
			}
			comprimento = t.numero_caracteres(inv_codigo)
			para(inteiro i = 0; i < comprimento; i++)
			{
				digito = t.obter_caracter(inv_codigo, i)
				codigo = t.preencher_a_esquerda(digito, i+1, codigo)	
			}
		}
		retorne codigo
	}
	funcao cadeia login(cadeia chave)
	{
		cadeia coordenada, linha = "", coluna = "", liberado = "", ana_senha, ana_codigo, senha, codigo, teste1, teste2
		caracter digito
		inteiro x = 0, y = 0
		logico virgula = falso, veri_senha = falso, veri_codigo = falso
		escreva("\nDigite o seu código de identificação: ")
		leia(codigo)
		escreva("Digite a sua senha: ")
		leia(senha)
		ana_codigo = codigo
		ana_senha = senha
		coordenada = hash(codigo)
		para(inteiro i = 0; i < t.numero_caracteres(coordenada); i++)
		{
			digito = t.obter_caracter(coordenada, i)
			se(digito == ','){virgula = verdadeiro}
			senao se(virgula == falso)
			{
				linha = t.preencher_a_esquerda(digito, i+1, linha)
			}
			senao
			{
				coluna = t.preencher_a_esquerda(digito, i-1, coluna)
			}
		}
		x = p.cadeia_para_inteiro(linha, 10)
		y = p.cadeia_para_inteiro(linha, 10)
		veri_codigo = verificacao(codigo, 2, coordenada, chave)
		veri_senha = verificacao(senha, 1, coordenada, chave)
		se(veri_senha == falso ou veri_codigo == falso)
		{
			escreva("Login não efetuado, senha ou código inválido...")
			codigo = "-1"
		}
		senao
		{
			escreva("Login efetuado com sucesso...")
		}
		retorne codigo
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 530; 
 * @DOBRAMENTO-CODIGO = [26, 85, 137, 237, 326];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {identificacao, 7, 8, 13}-{i, 37, 17, 1}-{i, 45, 17, 1}-{i, 63, 17, 1}-{veri_senha, 332, 26, 10}-{veri_codigo, 332, 46, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */