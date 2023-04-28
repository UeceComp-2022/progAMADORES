programa {
  funcao inicio() {
     inteiro opcao

		

          escreva("             Calculadora de Imposto de Renda                                 \n")
		escreva("**************************************************************************   \n")
		escreva("1) Verifica faixa salarial de retenção de IR \n")
		escreva("2) Verifica valores gastos com despesas que gerem compensação de IR \n")
		escreva("3) Verifica valor de isenção por dependente no IR \n")
		escreva("4) Verifica valores destinados a programas sociais que gerem isenção no IR \n")
		escreva("5) Para sair \n")
          escreva("************************************************************************** \n")

		escreva("Escolha uma opção: ")
		leia(opcao)

		limpa()

		escolha (opcao)	
		{
			caso 1: 
		 		
		 		 real salario, imposto

                     escreva("Digite o valor do salário: ")
                     leia(salario)
    
                  se (salario <= 1903.98)
                     imposto = 0
                  senao se (salario <= 2826.65)
                           imposto = (salario - 1903.98) * 0.075
                  senao se (salario <= 3751.05) 
                           imposto = (salario - 2826.65) * 0.15 + 69.75
                  senao se (salario <= 4664.68) 
                           imposto = (salario - 3751.05) * 0.225 + 350.98
                  senao
                           imposto = (salario - 4664.68) * 0.275 + 636.13
    
                       escreva("O valor do imposto devido é R$", imposto)
                       	
		 		
	
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 2: 
                      
                      cadeia despesa, saude, educacao, prevSocial, prevPrivada
                      real gastoTotal, gasto1, gasto2, gasto3, gasto4, desconto

                      escreva("    Algumas despesas dedutíveis do IR. \n ")
                      escreva("Qual o seu gasto com saúde? R$")
                      leia(gasto1)
                      escreva("Qual o seu gasto com educação? R$")
                      leia(gasto2)
                      escreva("Qual o seu gasto com previdencia social? R$")
                      leia(gasto3)
                      escreva("Qual o seu gasto com previdencia privada? R$")
                      leia(gasto4) 
         
                      gastoTotal = gasto1 + gasto2 + gasto3 + gasto4 
                      desconto = gastoTotal * 20/100
                      escreva(" O seu gasto total com despesas foi de; R$" , gastoTotal,  "\n")
                      escreva(" O seu desconto no IR foi de; R$", desconto, "\n")
                      escreva("Obrigado por fazer sua declaração de imposto de renda! \n")
    
		 		
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 3: 

		 	       inteiro dependentes = 0, quantdepentes, quantfilhos
                      real deducaodependentes = 0
                      caracter conjuge, filhos, conjdependente

			      escreva("Calculando quantos dependentes você na dedução de imposto de renda. \n")
                     escreva("Você possui cônjuge? Digite (S) ou (N) \n")
                     leia(conjuge)
           
                 se ( conjuge == 'S' ou conjuge == 's')
                   {

                     escreva("Ela é sua dependente para o imposto de renda? Digite (S) ou (N) \n")
                     leia(conjdependente)
                     dependentes = dependentes + 1 

                se (conjdependente == 'N' ou conjdependente == 'n')
                   {

                     dependentes = dependentes - 1
        
                   }
                  }
    
                 escreva("Você possui filho(s)? Digite (S) ou (N)\n")
                 leia(filhos)

                se ( filhos == 'S' ou filhos == 's')
                  {

                     escreva("Quantos filhos menores de 21 anos ou menor de 24 anos que esteja na faculdade você possui? \n")
                     leia(quantfilhos)
                     dependentes = dependentes + quantfilhos
      	
                  }
      
	          se (dependentes == 0)
	            {

                    escreva("Você não tem conpensação por dependentes em sua retenção de imposto de renda. \n")
	   	
	            }

	         senao 
	            {
		          deducaodependentes = 189.59
		          deducaodependentes = dependentes * deducaodependentes	
	            }
                    escreva("A dedução total na retenção de imposto de renda devido aos dependentes foi de: R$ ", deducaodependentes, "\n")
                    pare   // Impede que as instruções do caso 3 sejam executadas         
          caso 4: 
		 		cadeia prog
                    inteiro valor
                    real imposto, doacao,salario
                    escreva("               Doando parte do seu IR \n")
                    escreva("Gostaria de fazer uma doação, então ")  
                    escreva("escolha um programa para receber a sua doação! \n")
                    leia(prog)
                    escreva("Escolha a % de doação entre 1% a 6%! \n")
                    leia(valor)
                 enquanto (valor <=0 ou valor >=7){
                    escreva("Quanto quer doar em %? ")
                    leia (valor)
                 senao
                    escreva("Digite um valor válido!")
                    leia(valor) }
                 se valor >=1 e valor <=6{
                    escreva("Qual o seu rendimento mensal? ")
                    leia(salario)
                 se salario <= 1903.98 
                    imposto = 0
                 senao se salario <= 2826.65 
                          imposto = (salario - 1903.98) * 0.075               
                 senao se salario <= 3751.05 
                          imposto = (salario - 2826.65) * 0.15 + 69.75               
                 senao se salario <= 4664.68 
                          imposto = (salario - 3751.05) * 0.225 + 350.98               
                 senao
                          imposto = (salario - 4664.68) * 0.275 + 636.13
                          doacao = imposto*(valor/100)               
                          escreva("O valor do imposto devido é R$", imposto  ,"\n");
                          escreva("O valor da sua doação ficou R$ ",  doacao  ,"\n");
                          escreva("Muito obrigado pela doação! \n")
     } 
                    
                    pare   // Impede que as instruções do caso 4 sejam executadas
		 		
		 		
          caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
		 		escreva ("Opção Inválida ! Finalizando o programa")
		}
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5305; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */