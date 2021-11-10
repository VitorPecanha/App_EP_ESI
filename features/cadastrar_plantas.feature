#language: pt

Funcionalidade: Cadastrar uma planta
Como usuário
Para realizar o acompanhamento dela

Cenário: Cadastro de planta com sucesso
Dado que estou na página de cadastro de planta
Quando preencho o campo "plant_plant_id" com "1"
Quando preencho o campo "plant_plant_name" com "Alface"
Quando preencho o campo "plant_water_hour_interval" com "24"
Quando preencho o campo "plant_fertilizer_hour_interval" com "72"
E clico em salvar
Então ela deve ser salvo no banco de dados do usuário
E deverei ver ela nas minhas plantas cadastradas

Cenário: Cadastro de planta com erro - sem nome
Dado que estou na página de cadastro de planta
Quando preencho o campo "plant_plant_id" com "1"
Quando preencho o campo "plant_water_hour_interval" com "24"
Quando preencho o campo "plant_fertilizer_hour_interval" com "72"
E deixo o campo "plant_plant_name" vazio
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o nome da planta!"

Cenário: Cadastro de planta com erro - sem horas para regar
Dado que estou na página de cadastro de planta
Quando preencho o campo "plant_plant_id" com "1"
Quando preencho o campo "plant_plant_name" com "Alface"
Quando preencho o campo "plant_fertilizer_hour_interval" com "72"
E deixo o campo "plant_water_hour_interval" vazio
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o intervalo para regar a planta!"

Cenário: Cadastro de planta com erro - sem horas para fertilizar
Dado que estou na página de cadastro de planta
Quando preencho o campo "plant_plant_id" com "1"
Quando preencho o campo "plant_plant_name" com "Alface"
Quando preencho o campo "plant_water_hour_interval" com "24"
E deixo o campo "plant_fertilizer_hour_interval" vazio
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o intervalo para fertilizar a planta!"

Cenário: Cadastro de planta com erro - sem id
Dado que estou na página de cadastro de planta
Quando preencho o campo "plant_plant_name" com "Alface"
Quando preencho o campo "plant_water_hour_interval" com "24"
Quando preencho o campo "plant_fertilizer_hour_interval" com "72"
E deixo o campo "plant_plant_id" vazio
E clico em salvar
Então deverei receber a mensagem de erro "É obrigatório informar o id da planta!"