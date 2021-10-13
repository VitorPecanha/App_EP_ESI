require 'rails_helper'

RSpec.describe "AddingPlants", type: :system do
  before do
    driven_by(:rack_test)
  end

  pending "add some scenarios (or delete) #{__FILE__}"

  it 'lets the user register a new plant' do
    visit '/plants/new'

    expect(page).to have_content('New Plant')

    fill_in 'Plant', with: '1'
    fill_in 'Plant name', with: 'Cacto'
    fill_in 'Water hour interval', with: '72'
    fill_in 'Fertilizer hour interval', with: '720'

    click_on 'Create Plant'


    expect(page).to have_content('Plant: 1')
    expect(page).to have_content('Plant name: Cacto')
    expect(page).to have_content('Water hour interval: 72')
    expect(page).to have_content('Fertilizer hour interval: 720')
    expect(page).to have_content('Prunning: false')
  end

end
