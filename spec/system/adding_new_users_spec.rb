require 'rails_helper'

RSpec.describe "AddingNewUsers", type: :system do
  before do
    driven_by(:rack_test)
  end

  pending "add some scenarios (or delete) #{__FILE__}"

  it 'lets the user admin create a new user' do
    visit '/users'

    expect(page).to have_content('Usuários')

    click_on 'Novo'

    fill_in 'user_user_email', with: 'usuario_de_crack_gmail.com'
    fill_in 'user_user_first_name', with: 'Usuário'
    fill_in 'user_user_last_name', with: 'De Crackson'
    fill_in 'user_user_cpf', with: '85394387044'

    click_on 'Cadastrar'


    expect(page).to have_content('Email: usuario_de_crack_gmail.com')
    expect(page).to have_content('Nome: Usuário')
    expect(page).to have_content('Sobrenome: De Crackson')
    expect(page).to have_content('CPF: 85394387044')
  end

end
