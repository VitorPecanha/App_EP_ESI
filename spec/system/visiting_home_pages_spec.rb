require 'rails_helper'

RSpec.describe "VisitingHomePages", type: :system do
  before do
    driven_by(:rack_test)
  end

  pending "add some scenarios (or delete) #{__FILE__}"

  it 'allows the user Admin to visit his homepage' do
    visit '/home/admin'

    expect(page).to have_content('Planta Planta!')
    expect(page).to have_content('Listar Plantas')
    expect(page).to have_content('Bem-vindo, usuário!')

  end

end
