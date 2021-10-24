require 'rails_helper'

RSpec.describe "plants/index", type: :view do
  before(:each) do
    assign(:plants, [
      Plant.create!(
        plant_id: 2,
        plant_name: "Plant Name",
        water_hour_interval: 3,
        fertilizer_hour_interval: 4,
        prunning: false
      ),
      Plant.create!(
        plant_id: 2,
        plant_name: "Plant Name",
        water_hour_interval: 3,
        fertilizer_hour_interval: 4,
        prunning: false
      )
    ])
  end

  it "renders a list of plants" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Plant Name".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
