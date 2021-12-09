Dado('que estou na página de login') do
    @browser.goto 'user_sessions/sign_in'
end
  
Quando('tento fazer um login invalido') do
    @browser.text_field(id:"user_session_email").set "aijsdjiquehj@email.com"
    @browser.button(name:"commit").click
end

Então('erro de login ou senha invalidos deve aparecer') do
    expect(page).to  have_content("Email ou senha inválidos.")
end

Quando('deixo um dos campos vazio') do
    @browser.text_field(id:"user_session_email").set ""
    @browser.button(name:"commit").click
end

Então('erro de login ou senha invalidos deve aparecer') do
    expect(page).to  have_content("Email ou senha inválidos.")
end
  
Quando('preencho login e senha com informaçoes validas') do
    @browser.text_field(id:"user_session_email").set "teste@teste.com"
    @browser.text_field(id:"user_session_password").set "penis420"
    @browser.button(name:"commit").click
end

Então('mensagem de boas vindas deve aparecer') do
    expect(page).to  have_content("Bem-vindo")
end
  