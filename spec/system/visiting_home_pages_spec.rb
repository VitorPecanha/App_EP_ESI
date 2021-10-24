require 'rails_helper'

RSpec.describe "VisitingHomePages", type: :system do
  before do
    driven_by(:rack_test)
  end

  pending "add some scenarios (or delete) #{__FILE__}"

  it 'allows the user Admin to visit his homepage' do
    visit '/admhome'

    expect(page).to have_content('Home')
    expect(page).to have_content('Plant List')

  end

end
