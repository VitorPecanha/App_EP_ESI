Dado('que estou na página de redefinir senha') do
    @browser.goto 'user_sessions/password/new'
end

Quando('preencho um email não cadastrado') do
    @browser.text_field(id:"user_session_email").set "`buhwek3@email.com"
    @browser.button(name:"commit").click
end

Então('erro de email não cadastrado deve aparecer') do
    expect(page).to  have_content("Email not found")
end

Quando('preencho um email cadastrado') do
    @browser.text_field(id:"user_session_email").set "`teste@teste.com"
    @browser.button(name:"commit").click
end

Então('erro de email não cadastrado deve aparecer') do
    expect(page).to  have_content("Um email com instruções para recuperar sua senha foi enviado.")
end