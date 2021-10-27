require 'rails_helper'
require 'spec_helper'

RSpec.describe Plant, type: :model do
  it 'invalido sem nome' do
    plant = Plant.new
    plant.plant_id = 1
    plant.water_hour_interval = 24
    plant.fertilizer_hour_interval = 72 
    expect(plant).not_to be_valid
  end
end
