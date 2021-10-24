<<<<<<< HEAD
require 'rails_helper'

RSpec.describe "AddingPlants", type: :system do
  before do
    driven_by(:rack_test)
  end

  pending "add some scenarios (or delete) #{__FILE__}"

  it 'lets the user register a new plant' do
    visit '/plants'

    expect(page).to have_content('Lista de Plantas')

    click_on 'Cadastrar Planta'

    fill_in 'plant_plant_id', with: '1'
    fill_in 'plant_plant_name', with: 'Cacto'
    fill_in 'plant_water_hour_interval', with: '72'
    fill_in 'plant_fertilizer_hour_interval', with: '720'

    click_on 'Cadastrar'


    expect(page).to have_content('Id: 1')
    expect(page).to have_content('Nome: Cacto')
    expect(page).to have_content('Intervalo de rega em horas: 72')
    expect(page).to have_content('Intervalo de fertilização em horas: 720')
    expect(page).to have_content('Necessita de Poda: false')
  end

end
=======
require 'rails_helper'

RSpec.describe "AddingPlants", type: :system do
  before do
    driven_by(:rack_test)
  end

  pending "add some scenarios (or delete) #{__FILE__}"

  it 'lets the user register a new plant' do
    visit '/plants'

    expect(page).to have_content('Lista de Plantas')

    click_on 'Cadastrar Planta'

    fill_in 'plant_plant_id', with: '1'
    fill_in 'plant_plant_name', with: 'Cacto'
    fill_in 'plant_water_hour_interval', with: '72'
    fill_in 'plant_fertilizer_hour_interval', with: '720'

    click_on 'Cadastrar'


    expect(page).to have_content('Id: 1')
    expect(page).to have_content('Nome: Cacto')
    expect(page).to have_content('Intervalo de rega em horas: 72')
    expect(page).to have_content('Intervalo de fertilização em horas: 720')
    expect(page).to have_content('Necessita de Poda: false')
  end

end
>>>>>>> 78114e684a952b40042d2f2baa51365c38a191fb
