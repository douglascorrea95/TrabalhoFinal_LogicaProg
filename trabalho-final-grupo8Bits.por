programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> t
	
	inteiro opcaoMenuPrincipal, alteracao
	cadeia usuario, senha, resposta, resposta2
	cadeia vetorUsuarios [7] = {"ricardo", "thiago", "ariane", "andrea", "douglas", "vanessa", "admin"}
	cadeia vetorSenhas [7] = {"123", "t123", "a123", "a234", "d123","v123", "ad123"}
	cadeia nomeJogos[5]={"Serratec Adventure","Zepa Conquest","Limpa()","Enquanto infinity","Save the Programmer"}
	cadeia descricaoJogos[5]={"Jogo de aventura","Jogo de ação","Jogo de Quebra-Cabeça","Jogo Infinito","Jogo de Terror"}
	cadeia nomeConsole[5]={"Pc Serratec", "Serra Station 8", "Super Lógica", "Não Entendo SWitch", "Serra Drive"}
	cadeia descConsole[5]={"Descrição: Agilidade", "Descrição: Necessita de persistência", "Descrição : Memória 1 TB  ", "Descrição: Recussividade", "Descrição: Edição limitada"}
	cadeia nomeAcessorios[5]= {"Controle sem fio paçoquinha++","Teclado de jogos variáveis infinitas", "Progdragão", "Mouse Gamer limpa +rápido", "Livro * No final tudo da certo *"}
	cadeia descricaoAcessorios[5]= {"Aumente seu nível de motivação e agilidade na hora de enfrentar novos desafios.", "Eleve o nível do seu desempenho de jogo.", "Bonequinho para deixar o seu cantinho ainda mais bonito.", "O mouse mais desejado dos alunos de programação.","Dicas de como commitar no seu repositório de GitHub sem surtar"}
	inteiro somaCarrinho = 0
	cadeia addCarrinho[30] 
	cadeia addCarrinhoExibicao[30] 
	inteiro quantidadeItem[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}
	real precoAuxiliar[15]
	logico teste = verdadeiro
	


	funcao inicio()
	{	
		entrar()
			
	}

	funcao entrar(){
		logo()
		escreva("\n\n-------------------------------------------\n")
		escreva("\tDeseja entrar na loja? \n")
		escreva("-------------------------------------------\n")
		escreva("\tDigite S para [SIM]\n")
		escreva("\n")
		escreva("\tDigite N para [NÃO]\n")
		leia(resposta2)
		limpa()
	
		se(resposta2 == "s" ou resposta2 == "S"){
			login()				      				
		}
		senao se (resposta2 == "n" ou resposta2 == "N"){
			escreva("\t###########################\n")
			escreva("\t# Até logo, volte sempre! #\n")
			escreva("\t###########################\n")
			u.aguarde(1500)
			limpa()
			entrar()
		}
			senao{
				escreva("-------------------------------------------\n")
				escreva("\t# Opção inválida #\n")
				escreva("-------------------------------------------\n")
				u.aguarde(1500)
				limpa()
				login()
			}
			
	}
	
	funcao login()
	{	
		
		escreva("-------------------------------------------\n")
		escreva("\t»»» IDENTIFICAÇÃO «««\n")
		escreva("-------------------------------------------\n")
		escreva("Você deseja fazer login?\n")
		escreva("Digite [S] para Sim ou [N] para Não. \n")
		leia(resposta)

			se(resposta == "s" ou resposta == "S"){
				limpa()
				escreva("-------------------------------------------\n")
				escreva("\t»»» IDENTIFICAÇÃO «««\n")
				escreva("-------------------------------------------\n")
				escreva("Nome de usuário:\n")
				leia(usuario)
				escreva("Senha: \n")
				leia(senha)
				processo()
				
				
			}
			senao se(resposta == "n" ou resposta == "N"){
				limpa()
				entrar()
			}
			senao{
				escreva("-------------------------------------------\n")
				escreva(" # Operação invalida #\n")
				escreva("-------------------------------------------\n")
				escreva("\t# Tente Novamente #\n")
				u.aguarde(1000)									
				limpa()
				login()
				processo()
			}
				
	}

		funcao boasVindas(){
			limpa()
			escreva("-------------------------------------------\n")
			escreva("\t Olá ", t.caixa_alta(usuario), ", seja bem-vindo(a)!\n")
			escreva("-------------------------------------------\n")
			escreva("\t»»»»» BOAS COMPRAS «««««\n")
			escreva("-------------------------------------------\n")
			
			menuPrincipal()
	}
		
		funcao processo()
		{
			se (usuario == vetorUsuarios[0] e senha == vetorSenhas[0]) {
				boasVindas()
			}
				senao se (usuario == vetorUsuarios[1] e senha == vetorSenhas[1]){
					boasVindas()
				}
					senao se (usuario == vetorUsuarios[2] e senha == vetorSenhas[2]){
						boasVindas()
					}
						senao se (usuario == vetorUsuarios[3] e senha == vetorSenhas[3]){
							boasVindas()
						}
							senao se (usuario == vetorUsuarios[4] e senha == vetorSenhas[4]){
								boasVindas()
							}
								senao se (usuario == vetorUsuarios[5] e senha == vetorSenhas[5]){
									boasVindas()
								}
									senao se (usuario == vetorUsuarios[6] e senha == vetorSenhas[6]){
	       								menuAdm()
									}	
						
				senao
				{					
				escreva("-------------------------------------------\n")
				escreva(" # usuário ou senha inválido #\n")
				escreva("-------------------------------------------\n")
				escreva("\t# Tente Novamente #\n")
				u.aguarde(1000)									
				limpa()
				login()
				
				
				}
		}

	funcao menuPrincipal(){
		  escreva("\t======Menu-Principal======\n")
		  escreva("[1] Jogos\n[2] Consoles\n[3] Acessórios\n[4] Carrinho \n[5] Trocar Usuário \n[6] LogOut ")
		  escreva("\nEscolha uma opção: ")
		  leia(opcaoMenuPrincipal)
		  limpa()
		  escolha(opcaoMenuPrincipal){
		  	caso 1: 
		  		jogos()
		  	pare
		  	caso 2:
		  		consoles()
		  	pare
		  	caso 3:
		  		acessorios()
		  	pare
		  	caso 4:
		  		limpa()
		  		carrinho()
		  		login()
		  	pare
		  	caso 5:
		 		limpa()
		  		login()
		  	pare
		  	caso 6:
		  		limpa()
		  		logOut()
		  	pare
		  	caso contrario:
		  		erroEscolha()
		  }		  
	}
	      
	funcao erroEscolha(){
			limpa()
			escreva("Por favor escolha uma opção válida: \n")
			menuPrincipal()
		
	}

	funcao logOut(){
		inteiro sair 
		escreva("Deseja sair do sistema? [1] Sim ou [2] Não: ")
		leia(sair)
		escolha(sair){
			caso 1:
				limpa()
				escreva("Você saiu do sistema\n")
				u.aguarde(1000)
				entrar()
			
			pare
			caso 2:
				limpa()
				menuPrincipal()
			pare
			caso contrario:
				limpa()
				escreva("Escolha uma opção válida.")
				logOut()
		}
	}

	funcao menuAdm(){
		escreva("=====Bem-vindo Administrador=====\n\n")
		escreva("O que deseja alterar?\n")
		escreva("[1]Alterar usuário\n[2]Alterar Jogo\n[3]Alterar Console\n[4]Alterar Acessório\n[5]LogOut")
		escreva("\nDigite sua opção: ")
		leia(alteracao)
		limpa()

		escolha(alteracao){
		caso 1: 
			editarUsuario()
		pare
		caso 2:
			editarJogo()
		pare
		caso 3:
			editarConsole()
		pare
		caso 4:
			editarAcessorio()
		pare
		caso 5:
			limpa()
			logOutAdm()
		pare
		caso contrario:
			limpa()
			escreva("[1]Alterar usuário\n[2]Alterar Jogo\n[3]Alterar Console\n[4]Alterar Acessório\n[5]LogOut\n")	
			limpa()
			menuAdm()				
		}
	}

	funcao logOutAdm(){
		inteiro sair 
		escreva("Deseja sair do sistema? [1] Sim ou [2] Não: ")
		leia(sair)
		escolha(sair){
			caso 1:
				escreva("Você saiu do sistema\n")
				login()
			pare
			caso 2:
				menuAdm()
			pare
			caso contrario:
				limpa()
				logOutAdm()
		}
	}

	funcao editarUsuario(){
		inteiro usuarioParaEditar
		cadeia novoNomeUsuario, novaSenha
		escreva("Qual usuário deseja editar: ")
		escreva("\n[1] ricardo","\n[2] thiago", "\n[3] ariane", "\n[4] andrea", "\n[5] douglas", "\n[6] vanessa", "\n[7] admin","\n[8] LogOut: ")
		leia(usuarioParaEditar)
		escreva("Digite um novo nome: ")
		leia(novoNomeUsuario)
		escreva("Digite uma nova senha: ")
		leia(novaSenha)
		limpa()

		escolha(usuarioParaEditar){
			caso 1:
				vetorUsuarios [0] = novoNomeUsuario
				vetorSenhas [0] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso 2:
				vetorUsuarios [1] = novoNomeUsuario
				vetorSenhas [1] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso 3:
				vetorUsuarios [2] = novoNomeUsuario
				vetorSenhas [2] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso 4:
				vetorUsuarios [3] = novoNomeUsuario
				vetorSenhas [3] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso 5:
				vetorUsuarios [4] = novoNomeUsuario
				vetorSenhas [4] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso 6:
				vetorUsuarios [5] = novoNomeUsuario
				vetorSenhas [5] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso 7:
				vetorUsuarios [6] = novoNomeUsuario
				vetorSenhas [6] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso 8:
				vetorUsuarios [7] = novoNomeUsuario
				vetorSenhas [7] = novaSenha
				escreva("Os dados do usuário foi editado\n")
			pare
			caso contrario :
				escreva("\n[1] ricardo","\n[2] thiago", "\n[3] ariane", "\n[4] andrea", "\n[5] douglas", "\n[6] vanessa", "\n[7] admin","\n[8] LogOut: ")
				editarUsuario()
		
		}
		u.aguarde(1000)
		menuAdm()
	}

	funcao editarJogo(){
		inteiro jogoParaEditar
		cadeia novoNomeJogo, novaDescricao
		escreva("Qual produto deseja editar: ")
		escreva("\n[1] Serratec Adventure","\n[2] Zepa Conquest","\n[3] Limpa()","\n[4] Enquanto infinity","\n[5] Save the Programmer","\n[6]LogOut: ")
		leia(jogoParaEditar)
		escreva("Para qual nome deseja alterar: ")
		leia(novoNomeJogo)
		escreva("Qual a nova descrição: ")
		leia(novaDescricao)
		limpa()
		
		escolha(jogoParaEditar){
			caso 1:
				nomeJogos[0] = novoNomeJogo
				descricaoJogos[0] = novaDescricao
				escreva("O jogo foi editado\n")
			pare
			caso 2:
				nomeJogos[1] = novoNomeJogo
				descricaoJogos[1] = novaDescricao
				escreva("O jogo foi editado\n")
			pare
			caso 3:
				nomeJogos[2] = novoNomeJogo
				descricaoJogos[2] = novaDescricao
				escreva("O jogo foi editado\n")
			pare
			caso 4:
				nomeJogos[3] = novoNomeJogo
				descricaoJogos[3] = novaDescricao
				escreva("O jogo foi editado\n")
			pare
			caso 5:
				nomeJogos[4] = novoNomeJogo
				descricaoJogos[4] = novaDescricao
				escreva("O jogo foi editado\n")
			pare
			caso 6:
				logOut()
			pare
			caso contrario :
				escreva("\n[1] Serratec Adveture","\n[2] Zepa Conquest","\n[3] Limpa()","\n[4] Enquanto infinity","\n[5] Save the Programmer","\n[6]LogOut: ")
				editarJogo()
		
		}
		u.aguarde(1000)
		menuAdm()
	}
	funcao jogos(){		
	inteiro opcao1	
	inteiro quantidadeJogos[5]={9, 10, 13, 20, 40}	
	real precoJogos[5]={199.99, 299.99, 149.99, 69.99, 249.99}
	cadeia opcaoJogos[5]={"[1]", "[2]", "[3]", "[4]", "[5]"}
	escreva("======Jogos=====\n")
	para(inteiro k=0; k<5;k++){
		escreva("\n",opcaoJogos[k]," ", nomeJogos[k], "  R$" ,precoJogos[k], "\n")
		escreva("Descrição: ", descricaoJogos[k], "\nEstoque: ", quantidadeJogos[k], "\n")
		}
	escreva("\n[6]Carrinho\n\n[7]Voltar ao Menu\n")
	escreva("\nVocê pode adicionar os produtos ao carrinho ou acessar as opções disponíveis")
	escreva("\n\nEscolha o número da opção que você deseja realizar: ")
	leia(opcao1)

	escolha(opcao1){
		caso 1:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeJogos[0]," ao carrinho!\n")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[0]
			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[0]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoJogos[0]
					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[0]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[0]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoJogos[0]
					}
				}
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 2:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeJogos[1]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[1]
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[1]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoJogos[1]
					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[1]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[1]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoJogos[1]
					}
				}
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 3:
		teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeJogos[2]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[2]			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[2]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoJogos[2]
					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[2]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[2]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoJogos[2]
					}
				}
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 4:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeJogos[3]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[3]
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[3]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoJogos[3]
					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[3]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[3]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoJogos[3]
					}
				}
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		pare
		caso 5:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeJogos[4]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeJogos[4]
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeJogos[4]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoJogos[4]
					jogos()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeJogos[4]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeJogos[4]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoJogos[4]
					}
				}
				somaCarrinho = somaCarrinho + 1
				jogos()
			}
		caso 6:
			limpa()
			carrinho()
		pare
		caso 7:
			limpa()
			menuPrincipal()
		caso contrario: 
			limpa()
			escreva("Coloque uma opção válida\n")
			jogos()
		}
	}

	funcao editarConsole(){
		inteiro ConsoleParaEditar
		cadeia novoNomeConsole, novaDescricao
		escreva("Qual produto deseja editar: ")
		escreva("\n[1] Pc Serratec", "[2] Serra Station 8", "[3] Super Lógica", "[4]Não Entendo SWitch", "[5]Serra Drive","\n[6]LogOut: ")
		leia(ConsoleParaEditar)
		escreva("Para qual nome deseja alterar: ")
		leia(novoNomeConsole)
		escreva("Qual a nova descrição: ")
		leia(novaDescricao)
		limpa()
		
		escolha(ConsoleParaEditar){
			caso 1:
				nomeConsole[0] = novoNomeConsole
				descConsole[0] = novaDescricao
				escreva("O console foi editado\n")
			pare
			caso 2:
				nomeConsole[1] = novoNomeConsole
				descConsole[1] = novaDescricao
				escreva("O console foi editado\n")
			pare
			caso 3:
				nomeConsole[2] = novoNomeConsole
				descConsole[2] = novaDescricao
				escreva("O console foi editado\n")
			pare
			caso 4:
				nomeConsole[3] = novoNomeConsole
				descConsole[3] = novaDescricao
				escreva("O console foi editado\n")
			pare
			caso 5:
				nomeConsole[4] = novoNomeConsole
				descConsole[4] = novaDescricao
				escreva("O console foi editado\n")
			pare
			caso 6:
				logOut()
			pare
			caso contrario :
				escreva("\n[1] Pc Serratec", "[2] Serra Station 8", "[3] Super Lógica", "[4]Não Entendo SWitch", "[5]Serra Drive","\n[6]LogOut: ")
				editarConsole()
		
		}
		u.aguarde(1000)
		menuAdm()
	}
	funcao consoles(){
		inteiro opcao2		
		inteiro qtdeConsole[5]={23, 14, 22, 15, 17}		
		real precoConsole[5]={2499.99, 5499.99, 999.99, 2999.99, 999.99}
		cadeia opcaoConsole[5]={"[1]", "[2]", "[3]", "[4]", "[5]"}
		escreva("======Consoles=====\n")
		para(inteiro k=0; k<5;k++){
			escreva("\n", opcaoConsole[k]," " , nomeConsole[k], "  R$" , precoConsole[k],  "\n")
			escreva(descConsole[k], "\nEstoque: ", qtdeConsole[k], "\n")
		}
		escreva("\n[6] Carrinho\n\n[7] Voltar ao Menu\n" )
		escreva("\nVocê pode adicionar os produtos ao carrinho ou acessar as opções disponíveis")
		escreva("\n\nEscolha o número da opção que você deseja realizar: ")
		leia(opcao2)

		escolha(opcao2){

		caso 1:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[0]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[0]			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[0]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[0]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[0]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[0]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[0]
					}
				}
				somaCarrinho = somaCarrinho + 1
				consoles()
			}
		pare
		caso 2:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[1]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[1]			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[1]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[1]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[1]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[1]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[1]
					}
				}
				somaCarrinho = somaCarrinho + 1
				consoles()
			}
		pare
		caso 3:
		teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[2]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[2]			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[2]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[2]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[2]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[2]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[2]
					}
				}				
				somaCarrinho = somaCarrinho + 1
				consoles()
			}
		pare
		caso 4:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[3]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[3]			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[3]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[3]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[3]
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[3]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[3]
					}
				}				
				somaCarrinho = somaCarrinho + 1
				consoles()
			}
		pare
		caso 5:
			teste = verdadeiro
			limpa()
			escreva("Você adicionou ", nomeConsole[4]," ao carrinho!")
			u.aguarde(1000)
			escreva("\n")
			addCarrinho[somaCarrinho] = nomeConsole[4]			
			para(inteiro j = 0; j <= somaCarrinho; j++){
				se (addCarrinhoExibicao[j] == nomeConsole[4]){
					teste = falso
					quantidadeItem[j] = quantidadeItem[j] + 1
					precoAuxiliar[j] = precoConsole[4]
					consoles()	
				}
			}
			se (teste == verdadeiro){
				addCarrinhoExibicao[somaCarrinho] = nomeConsole[4]				
				para (inteiro i = 0; i <= somaCarrinho; i++){
					se(addCarrinhoExibicao[i] == nomeConsole[4]){
						quantidadeItem[i] = quantidadeItem[i] + 1
						precoAuxiliar[i] = precoConsole[4]
					}
				}
				somaCarrinho = somaCarrinho + 1
				consoles()
			}
			caso 6:
				limpa() 
				carrinho()
			pare
			caso 7:
				limpa()
				menuPrincipal()
			pare
			caso contrario: 
				limpa()
				escreva("Coloque uma opção válida\n")
				consoles()
			}
	}

funcao editarAcessorio(){
		inteiro acessorioParaEditar
		cadeia novoNomeacessorio, novaDescricao
		escreva("Qual produto deseja editar: ")
		escreva("\n[1] Controle sem fio paçoquinha++","\n[2] Teclado de jogos variáveis infinitas", "\n[3] Progdragão", "\n[4] Mouse Gamer limpa +rápido", "\n[5]Livro * No final tudo da certo *","\n[6]LogOut: ")
		leia(acessorioParaEditar)
		escreva("Para qual nome deseja alterar: ")
		leia(novoNomeacessorio)
		escreva("Qual a nova descrição: ")
		leia(novaDescricao)
		limpa()
		
		escolha(acessorioParaEditar){
			caso 1:
				nomeAcessorios[0] = novoNomeacessorio
				descricaoAcessorios[0] = novaDescricao
				escreva("O acessorio foi editado\n")
			pare
			caso 2:
				nomeAcessorios[1] = novoNomeacessorio
				descricaoAcessorios[1] = novaDescricao
				escreva("O acessorio foi editado\n")
			pare
			caso 3:
				nomeAcessorios[2] = novoNomeacessorio
				descricaoAcessorios[2] = novaDescricao
				escreva("O acessorio foi editado\n")
			pare
			caso 4:
				nomeAcessorios[3] = novoNomeacessorio
				descricaoAcessorios[3] = novaDescricao
				escreva("O acessorio foi editado\n")
			pare
			caso 5:
				nomeAcessorios[4] = novoNomeacessorio
				descricaoAcessorios[4] = novaDescricao
				escreva("O acessorio foi editado\n")
			pare
			caso 6:
				logOut()
			pare
			caso contrario :
				escreva("\n[1] Controle sem fio paçoquinha++","\n[2] Teclado de jogos variáveis infinitas", "\n[3] Progdragão", "\n[4] Mouse Gamer limpa +rápido", "\n[5]Livro * No final tudo da certo *","\n[6]LogOut: ")
				editarAcessorio()
		
		}
		u.aguarde(1000)
		menuAdm()
	}

  funcao acessorios(){	
	inteiro opcao3
     cadeia numero[5]= {"[1]", "[2]", "[3]", "[4]", "[5]"}
	inteiro Qtd[5] = {30, 12, 20, 15, 25}
	real precoAcessorios[5]= {199.99 , 299.99 , 149.99, 99.99, 69.99}
	escreva("======Acessórios=====\n")
	para (inteiro k=0; k<5; k++) {
			escreva("\n",numero[k], " ", nomeAcessorios[k]," ","R$ ", precoAcessorios[k], "\nDesrição: " ,descricaoAcessorios[k],"\n", "Estoque ", Qtd[k],"\n")
	}
	escreva("\n[6] Carrinho\n\n[7] Voltar ao Menu\n\n")
	escreva("Você pode adicionar os produtos ao carrinho ou acessar as opções disponíveis\n")
	escreva("\nEscolha o número da opção que você deseja realizar: ")
	leia(opcao3)
		          
	escolha (opcao3) {
			caso 1: 
				teste = verdadeiro
				limpa()
				escreva("Você adicionou ", nomeAcessorios[0]," ao carrinho!")
				escreva("\n")
				u.aguarde(1000)
				addCarrinho[somaCarrinho] = nomeAcessorios[0]				
				para(inteiro j = 0; j <= somaCarrinho; j++){
					se (addCarrinhoExibicao[j] == nomeAcessorios[0]){
						teste = falso
						quantidadeItem[j] = quantidadeItem[j] + 1
						precoAuxiliar[j] = precoAcessorios[0]
						acessorios()	
					}
				}
				se (teste == verdadeiro){
					addCarrinhoExibicao[somaCarrinho] = nomeAcessorios[0]
					para (inteiro i = 0; i <= somaCarrinho; i++){
						se(addCarrinhoExibicao[i] == nomeAcessorios[0]){
							quantidadeItem[i] = quantidadeItem[i] + 1
							precoAuxiliar[i] = precoAcessorios[0]							
						}
					}
					somaCarrinho = somaCarrinho + 1	
					acessorios()
				}
		   	pare
		   	caso 2: 
		   		teste = verdadeiro
				limpa()
				escreva("Você adicionou ", nomeAcessorios[1]," ao carrinho!")
				u.aguarde(1000)
				escreva("\n")
				addCarrinho[somaCarrinho] = nomeAcessorios[1]
				
				para(inteiro j = 0; j <= somaCarrinho; j++){
					se (addCarrinhoExibicao[j] == nomeAcessorios[1]){
						teste = falso
						quantidadeItem[j] = quantidadeItem[j] + 1
						precoAuxiliar[j] = precoAcessorios[1]
						acessorios()	
					}
				}
				se (teste == verdadeiro){
					addCarrinhoExibicao[somaCarrinho] = nomeAcessorios[1]
					para (inteiro i = 0; i <= somaCarrinho; i++){
						se(addCarrinhoExibicao[i] == nomeAcessorios[1]){
							quantidadeItem[i] = quantidadeItem[i] + 1
							precoAuxiliar[i] = precoAcessorios[0]							
						}
					}
					somaCarrinho = somaCarrinho + 1	
					acessorios()
				}
		   	pare
                         	
		   	caso 3:
		   		teste = verdadeiro
				limpa()
				escreva("Você adicionou ", nomeAcessorios[2]," ao carrinho!")
				u.aguarde(1000)
				escreva("\n")
				addCarrinho[somaCarrinho] = nomeAcessorios[2]
				
				para(inteiro j = 0; j <= somaCarrinho; j++){
					se (addCarrinhoExibicao[j] == nomeAcessorios[2]){
						teste = falso
						quantidadeItem[j] = quantidadeItem[j] + 1
						precoAuxiliar[j] = precoAcessorios[2]
						acessorios()	
					}
				}
				se (teste == verdadeiro){
					addCarrinhoExibicao[somaCarrinho] = nomeAcessorios[2]
					para (inteiro i = 0; i <= somaCarrinho; i++){
						se(addCarrinhoExibicao[i] == nomeAcessorios[2]){
							quantidadeItem[i] = quantidadeItem[i] + 1
							precoAuxiliar[i] = precoAcessorios[2]							
						}
					}
					somaCarrinho = somaCarrinho + 1	
					acessorios()
				}
		   	pare

		   	caso 4: 
		   		teste = verdadeiro
				limpa()
				escreva("Você adicionou ", nomeAcessorios[3]," ao carrinho!")
				u.aguarde(1000)
				escreva("\n")
				addCarrinho[somaCarrinho] = nomeAcessorios[3]
				
				para(inteiro j = 0; j <= somaCarrinho; j++){
					se (addCarrinhoExibicao[j] == nomeAcessorios[3]){
						teste = falso
						quantidadeItem[j] = quantidadeItem[j] + 1
						precoAuxiliar[j] = precoAcessorios[3]
						acessorios()	
					}
				}
				se (teste == verdadeiro){
					addCarrinhoExibicao[somaCarrinho] = nomeAcessorios[3]
					para (inteiro i = 0; i <= somaCarrinho; i++){
						se(addCarrinhoExibicao[i] == nomeAcessorios[3]){
							quantidadeItem[i] = quantidadeItem[i] + 1
							precoAuxiliar[i] = precoAcessorios[3]							
						}
					}
					somaCarrinho = somaCarrinho + 1	
					acessorios()
				}
		   	pare

		   	caso 5: 
		   		teste = verdadeiro
				limpa()
				escreva("Você adicionou ", nomeAcessorios[4]," ao carrinho!")
				u.aguarde(1000)
				escreva("\n")
				addCarrinho[somaCarrinho] = nomeAcessorios[4]
				
				para(inteiro j = 0; j <= somaCarrinho; j++){
					se (addCarrinhoExibicao[j] == nomeAcessorios[4]){
						teste = falso
						quantidadeItem[j] = quantidadeItem[j] + 1
						precoAuxiliar[j] = precoAcessorios[4]
						acessorios()	
					}
				}
				se (teste == verdadeiro){
					addCarrinhoExibicao[somaCarrinho] = nomeAcessorios[4]
					para (inteiro i = 0; i <= somaCarrinho; i++){
						se(addCarrinhoExibicao[i] == nomeAcessorios[4]){
							quantidadeItem[i] = quantidadeItem[i] + 1
							precoAuxiliar[i] = precoAcessorios[4]							
						}
					}
					somaCarrinho = somaCarrinho + 1	
					acessorios()
				}
		   	pare
		   	caso 6: 
		   		limpa()
				carrinho()
		   	pare
		   	caso 7: 
		   		limpa()
				menuPrincipal()
			pare

		   	caso contrario:
			    limpa()
			    escreva("Escolha uma opção valida")
			    acessorios() 
		}
	}
	funcao carrinho(){
		
		
		caracter respostaMenu, respostaCompra
		
		escreva("===Carrinho de Compras===")

				
		para(inteiro i = 0; i <= somaCarrinho; i++){
			escreva("\n\n", addCarrinhoExibicao[i], "\n")
			se(quantidadeItem[i] >= 1){
				escreva("Quantidade: ", quantidadeItem[i], "\n")
				escreva("Preço Unitário: ", precoAuxiliar[i])
			}
		}
		finalizarCompra()
	}

	funcao finalizarCompra(){
		inteiro respostaCarrinho
		cadeia respostaCompra
		
		escreva("[1] Voltar ao Menu \n[2] Finalizar Compra")
		escreva("\nEscolha uma opção: ")
		leia(respostaCarrinho)
		escolha(respostaCarrinho){
			caso 1: 
				limpa()
				menuPrincipal()
			pare
			caso 2:
				escreva("\nDeseja confirmar sua compra? [s/n]")
				leia(respostaCompra)
				se (respostaCompra == "s" ou respostaCompra == "S" ){
					limpa()
					escreva("Compra realizada com sucesso! \n\n")
										
				}
				senao se(respostaCompra == "n" ou respostaCompra == "N"){
					escreva("Seus produtos ficarão no carrinho te esperando! /n")
					u.aguarde(1000)
					limpa()
					menuPrincipal()
				}
				senao{
					limpa()
					escreva("Por favor escolha uma opção válida.")
					u.aguarde(1000)
					limpa()
					carrinho()
				}
			pare
			caso contrario:
				limpa()
				escreva("Por favor escolha uma opção válida.")
				u.aguarde(1000)
				limpa()
				carrinho()
		}
	}
		
	funcao logo(){
limpa()
escreva("\n      *****                             ****              ****             ****           ")
escreva("\n    *********                         ********          ********         ********         ")
escreva("\n   *****  ****                       **********        **********       **********        ")
escreva("\n   ***********                      ***  ****  *      ***  ****  *     ***  ****  *       ")
escreva("\n  *********                         ***  ****  *      ***  ****  *     ***  ****  *       ")
escreva("\n  *****            **   **   **     ************      ************     ************       ")
escreva("\n  ***             **** **** ****    ************      ************     ************       ")
escreva("\n  *****           **** **** ****    ************      ************     ************       ")
escreva("\n  *********        **   **   **     ************      ************     ************       ")
escreva("\n    **********                      ************      ************     ************       ")
escreva("\n    **********                      ************      ************     ************       ")
escreva("\n     ********                       *** **** ***      *** **** ***     *** **** ***       ")
escreva("\n       ****                          *   **   *        *   **   *       *   **   *        ")
escreva("\n                                                                                          ")
escreva("\n                                                                                          ")
escreva("\n                                                                                          ")
escreva("\n      ***********             *********   ***   *************   ***********               ")
escreva("\n      ***********             **********  ***   *************   ***********               ")
escreva("\n      ***     ***             ***     **  ***        ***        ***                       ")
escreva("\n      ***     ***             ***     **  ***        ***        ***                       ")
escreva("\n      ***********   *******   **********  ***        ***        ***********               ")
escreva("\n      ***********   *******   **********  ***        ***        ***********               ")
escreva("\n      ***     ***             ***     **  ***        ***                ***               ")
escreva("\n      ***     ***             ***     **  ***        ***                ***               ")
escreva("\n      ***********             **********  ***        ***        ***********               ")
escreva("\n      ***********             *********   ***        ***        ***********               ")
	}

				
	
}
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1547; 
 * @DOBRAMENTO-CODIGO = [24, 30, 63, 103, 114, 152, 186, 193, 216, 249, 267, 329, 543, 592, 758, 808, 980, 998, 1041];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {quantidadeItem, 19, 9, 14}-{addCarrinho, 17, 8, 11}-{addCarrinhoExibicao, 18, 8, 19};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */