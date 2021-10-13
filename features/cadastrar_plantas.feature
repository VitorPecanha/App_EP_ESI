#language: pt

Funcionalidade: Cadastrar uma planta
Como usuário
Para realizar o acompanhamento dela

Cenário: Cadastro de planta com sucesso
Dado que estou na página de cadastro de planta
Quando preencho o campo "Nome" com "Alface"
E clico em salvar
Então ela deve ser salvo no banco de dados do usuário
E deverei ver ela nas minhas plantas cadastradas

Cenário: Cadastro de planta com erro - sem nome
Dado que estou na página de cadastro de planta
Quando não preencho o campo "Nome"
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o nome da planta!"

Cenário: Cadastro de planta com erro - nome inválido
Dado que estou na página de cadastro de planta
Quando preencho o campo "Nome" com "AJK@42k"
E clico em salvar
Então deverei receber a mensagem de erro "Insira um nome de planta válido!"
