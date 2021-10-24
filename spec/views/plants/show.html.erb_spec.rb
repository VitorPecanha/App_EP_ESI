require 'rails_helper'

RSpec.describe "plants/show", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      plant_id: 2,
      plant_name: "Plant Name",
      water_hour_interval: 3,
      fertilizer_hour_interval: 4,
      prunning: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Plant Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
  end
end
