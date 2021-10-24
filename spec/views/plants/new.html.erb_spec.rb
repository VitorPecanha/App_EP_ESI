require 'rails_helper'

RSpec.describe "plants/new", type: :view do
  before(:each) do
    assign(:plant, Plant.new(
      plant_id: 1,
      plant_name: "MyString",
      water_hour_interval: 1,
      fertilizer_hour_interval: 1,
      prunning: false
    ))
  end

  it "renders new plant form" do
    render

    assert_select "form[action=?][method=?]", plants_path, "post" do

      assert_select "input[name=?]", "plant[plant_id]"

      assert_select "input[name=?]", "plant[plant_name]"

      assert_select "input[name=?]", "plant[water_hour_interval]"

      assert_select "input[name=?]", "plant[fertilizer_hour_interval]"

      assert_select "input[name=?]", "plant[prunning]"
    end
  end
end
