programa
{
	
	funcao inicio()
	{
		cadeia nome
		cadeia banco[4] = {"Bradesco","Itau","Santander","Brasil"}
		cadeia conta[3] = {"Corrente","Polpança","Salário"}
		inteiro selecao_banco, selecao_conta, selecao_sacar,selecao_extrato
		real valor_total, valor_add, valor_sacar
		
		escreva ("Digite seu nome : ")
		leia (nome)
		escreva ("Escolha o banco que deseja usar :\n",
			    "(0) Bradesco\n",
			    "(1) Itau\n",
			    "(2) Santander\n",
			    "(3) Brasil\n",
			    "Digite o número conforme a escolha do banco : \n")
		leia (selecao_banco)
		
		se (selecao_banco >= 0 e selecao_banco < 5){

			escreva ("\nEscolha o tipo de conta que deseja abrir : \n",
				    "(0) Corrente\n",
				    "(1) Polpança\n",
				    "(2) Salário\n",
				    "Digite o número conforme a escolha do tipo de conta :\n")
					leia (selecao_conta)

			se (selecao_conta >= 0 e selecao_conta < 4){
		
				escreva ("\nDigite o valor que deseja adicionar na sua conta 'utilize ponto' :\n")
				leia (valor_add)

				se (valor_add > 0){
					
						valor_total = valor_add

						escreva ("\nDeseja sacar algum valor ?\n",
							    "(0) Sim\n", 
							    "(1) Não\n")
							    leia (selecao_sacar)

							    se (selecao_sacar == 0){

							    		escreva ("\nDigite o quanto deseja sacar 'utilize ponto' :\n")
							    		leia (valor_sacar)

							    		se (valor_sacar > 0){

							    				escreva ("\nSaque efetuado com sucesso !\n")
							    				escreva ("\nDeseja saber o extrato ?\n",
							    					    "(0) Sim\n", 
							    					    "(1) Não\n")
							    					    leia (selecao_extrato)

							    					    se (selecao_extrato == 0){
							    					    		valor_total = valor_total - valor_sacar
							    					    		escreva ("\nNome : ", nome,
							    					    			    "\nBanco : ", banco[selecao_banco],
							    					    			    "\nTipo de conta : ", conta[selecao_conta],
							    					    			    "\nSaldo total da conta :", valor_total,
							    					    			    "\nValor de saque : ", valor_sacar)
							    					    	} senao {
							    					    		escreva ("\nTransação concluida !\n")
							    					    		}
							    			} senao {
							    				escreva ("\nVocê deve sacar um valor maior que 0 !\n")
							    				}
							    	} senao {
							    				escreva ("\nDeseja saber o extrato ?\n",
							    					    "(0) Sim\n", 
							    					    "(1) Não\n")

							    					    leia (selecao_extrato)

							    					    se (selecao_extrato == 0){
							    					    		valor_total = valor_total
							    					    		escreva ("\nNome : ", nome,
							    					    			    "\nBanco : ", banco[selecao_banco],
							    					    			    "\nTipo de conta : ", conta[selecao_conta],
							    					    			    "\nSaldo total da conta :", valor_total) 		
					} senao {
						escreva ("\nVocê deve acrescentar um valor maior que 0 !\n")
						}
				}
			}
	}
}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 967; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */