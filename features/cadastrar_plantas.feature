#language: pt

Funcionalidade: Cadastrar uma planta
Como usuário
Para realizar o acompanhamento dela

Cenário: Cadastro de planta com sucesso
Dado que estou na página de cadastro de planta
Quando preencho o campo "Nome" com "Alface"
Quando preencho o campo "Intervalo de horas para regar" com "24"
Quando preencho o campo "Intervalo de horas para fertilizar" com "72"
Quando preencho o campo "Poda" com "Não"
E clico em salvar
Então ela deve ser salvo no banco de dados do usuário
E deverei ver ela nas minhas plantas cadastradas

Cenário: Cadastro de planta com erro - sem nome
Dado que estou na página de cadastro de planta
Quando preencho o campo "Intervalo de horas para regar" com "24"
Quando preencho o campo "Intervalo de horas para fertilizar" com "72"
Quando preencho o campo "Poda" com "Não"
E deixo o campo "Nome" vazio
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o nome da planta!"

Cenário: Cadastro de planta com erro - sem horas para regar
Dado que estou na página de cadastro de planta
Quando preencho o campo "Nome" com "Alface"
Quando preencho o campo "Intervalo de horas para fertilizar" com "72"
Quando preencho o campo "Poda" com "Não"
E deixo o campo "Intervalo de horas para regar" vazio
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o intervalo para regar a planta!"

Cenário: Cadastro de planta com erro - sem horas para fertilizar
Dado que estou na página de cadastro de planta
Quando preencho o campo "Nome" com "Alface"
Quando preencho o campo "Intervalo de horas para regar" com "24"
Quando preencho o campo "Poda" com "Não"
E deixo o campo "Intervalo de horas para fertilizar" vazio
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o intervalo para fertilizar a planta!"
