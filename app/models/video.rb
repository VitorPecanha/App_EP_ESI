class Video < ApplicationRecord
  validates :nome_da_planta, presence: { message: 'É obrigatório informar o nome da planta!' }
  validates :nome_do_video, presence: { message: 'É obrigatório informar o nome do video!' }
  validates :provedor, presence: { message: 'É obrigatório informar o nome do provedor!' }
  validates :link, presence: { message: 'É obrigatório informar o link do vídeo!' }
end
