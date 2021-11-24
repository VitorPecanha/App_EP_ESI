Dado('que estou na página de cadastro de videos') do
  visit 'videos/new'
end

Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2
end

Quando('clico em salvar') do
  click_on 'Salvar video'
end

Então('ele deve ser salvo no banco de dados de vídeos') do
  video = Video.order("id").last
  expect
end