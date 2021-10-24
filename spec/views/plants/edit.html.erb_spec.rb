require 'rails_helper'

RSpec.describe "plants/edit", type: :view do
  before(:each) do
    @plant = assign(:plant, Plant.create!(
      plant_id: 1,
      plant_name: "MyString",
      water_hour_interval: 1,
      fertilizer_hour_interval: 1,
      prunning: false
    ))
  end

  it "renders the edit plant form" do
    render

    assert_select "form[action=?][method=?]", plant_path(@plant), "post" do

      assert_select "input[name=?]", "plant[plant_id]"

      assert_select "input[name=?]", "plant[plant_name]"

      assert_select "input[name=?]", "plant[water_hour_interval]"

      assert_select "input[name=?]", "plant[fertilizer_hour_interval]"

      assert_select "input[name=?]", "plant[prunning]"
    end
  end
end
