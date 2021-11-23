#language: pt

Funcionalidade: Cadastrar videos
  Como usuário
  Para que posso obter e salvar informações de como cuidar das plantas
  Eu quero cadastrar videos no banco de dados

  Cenário: Cadastro de video com sucesso
    Dado que estou na página de cadastro de videos
    Quando preencho o campo "nome_da_planta" com "Maçã"
    Quando preencho o campo "nome_do_video" com "Germinação de semente de maçã"
    Quando preencho o campo "provedor" com "Youtube"
    Quando preencho o campo "link" com "https://www.youtube.com/watch?v=aQJWZVks1ec"
    E clico em salvar
    Então ele deve ser salvo no banco de dados de vídeos
    E deverei ver ele na página de listagem de videos

  Cenário: Cadastro de vídeo com erro - sem nome da planta
    Dado que estou na página de cadastro de videos
    Quando preencho o campo "nome_da_planta" com ""
    Quando preencho o campo "nome_do_video" com "Germinação de semente de maçã"
    Quando preencho o campo "provedor" com "Youtube"
    Quando preencho o campo "link" com "https://www.youtube.com/watch?v=aQJWZVks1ec"
    E clico em salvar
    Então deverei receber a mensagem de erro "É obrigatório informar o nome da planta"
    
  Cenário: Cadastro de vídeo com erro - sem nome do vídeo
    Dado que estou na página de cadastro de videos
    Quando preencho o campo "nome_da_planta" com "Maçã"
    Quando preencho o campo "nome_do_video" com ""
    Quando preencho o campo "provedor" com "Youtube"
    Quando preencho o campo "link" com "https://www.youtube.com/watch?v=aQJWZVks1ec"
    E clico em salvar
    Então deverei receber a mensagem de erro "É obrigatório informar o nome do vídeo"
    
  Cenário: Cadastro de vídeo com erro - sem provedor
    Dado que estou na página de cadastro de videos
    Quando preencho o campo "nome_da_planta" com "Maçã"
    Quando preencho o campo "nome_do_video" com "Germinação de semente de maçã"
    Quando preencho o campo "provedor" com ""
    Quando preencho o campo "link" com "https://www.youtube.com/watch?v=aQJWZVks1ec"
    E clico em salvar
    Então deverei receber a mensagem de erro "É obrigatório informar o nome do provedor"
    
  Cenário: Cadastro de vídeo com erro - sem link
    Dado que estou na página de cadastro de videos
    Quando preencho o campo "nome_da_planta" com "Maçã"
    Quando preencho o campo "nome_do_video" com "Germinação de semente de maçã"
    Quando preencho o campo "provedor" com "Youtube"
    Quando preencho o campo "link" com ""
    E clico em salvar
    Então deverei receber a mensagem de erro "É obrigatório informar o link do vídeo"