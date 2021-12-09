Dado('que estou na página de novo usuario') do
    @browser.goto 'user_sessions/sign_up'
end
  
Quando('tento cadastrar um novo usuario') do
    @browser.text_field(id:"user_session_email").set "teste@teste.com"
    @browser.text_field(id:"user_session_password").set "senha420"
    @browser.text_field(id:"user_session_password_confirmation").set "senha420"
    @browser.button(name:"commit").click
end

Então('usuário deve ser criado e logado') do
    expect(page).to  have_content("Bem-vindo")
end
  
Quando('deixo o campo email vazio')
    @browser.text_field(id:"user_session_email").set ""
    @browser.text_field(id:"user_session_password").set "senha420"
    @browser.text_field(id:"user_session_password_confirmation").set "senha420"
    @browser.button(name:"commit").click
end

Então('erro de email deve aparecer') do
    expect(page).to  have_content("Email can't be blank")
end

Quando('deixo o campo senha vazio')
    @browser.text_field(id:"user_session_email").set "teste@teste.com"
    @browser.text_field(id:"user_session_password").set ""
    @browser.text_field(id:"user_session_password_confirmation").set ""
    @browser.button(name:"commit").click
end

Então('erro de senha deve aparecer') do
    expect(page).to  have_content("Password can't be blank")
end

Quando('preencho email que já existe')
    @browser.text_field(id:"user_session_email").set "teste@teste.com"
    @browser.text_field(id:"user_session_password").set "senha420"
    @browser.text_field(id:"user_session_password_confirmation").set "senha420"
    @browser.button(name:"commit").click
end

Então('erro de email cadastrado deve aparecer') do
    expect(page).to  have_content("Email has already been taken")
end

Quando('preencho senhas divergentes')
    @browser.text_field(id:"user_session_email").set "teste9@teste.com"
    @browser.text_field(id:"user_session_password").set "senha123"
    @browser.text_field(id:"user_session_password_confirmation").set "senha456"
    @browser.button(name:"commit").click
end

Então('erro de senhas divergentes deve aparecer') do
    expect(page).to  have_content("Password confirmation doesn't match Password")
end