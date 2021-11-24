class Video < ApplicationRecord
  validates :nome_da_planta, presence: { message: 'É obrigatório informar o nome da planta!'}
end
