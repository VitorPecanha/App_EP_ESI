require 'rails_helper'
require 'spec_helper'

RSpec.describe Video, type: :model do
  it 'invalido sem nome da planta' do
    video = Video.new
    video.nome_do_video = "nome video"
    video.provedor = "provedor"
    video.link = "http://www.site.com.br"
    expect(video).not_to be_valid
  end

  it 'invalido sem nome do video' do
    video = Video.new
    video.nome_da_planta = "planta"
    video.provedor = "provedor"
    video.link = "link"
    expect(video).not_to be_valid
  end
  
end
