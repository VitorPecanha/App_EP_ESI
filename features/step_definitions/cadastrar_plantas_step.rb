Dado('que estou na página de cadastro de planta') do
    visit 'plants/new'
end
  
Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2 
end
  
Quando('clico em salvar') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('ela deve ser salvo no banco de dados do usuário') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('deverei ver ela nas minhas plantas cadastradas') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando('deixo o campo {string} vazio') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('deverei receber a mensagem de erro {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  