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
  expect(video.nome_da_planta).to eq("Maçã")
  expect(video.nome_do_video).to eq("Germinação de semente de maçã")
  expect(video.provedor).to eq("Youtube")
  expect(video.link).to eq("https://www.youtube.com/watch?v=aQJWZVks1ec")
end

Então('deverei ver ele na página de listagem de videos') do
  expect(page).to have_content('Maçã')
  expect(page).to have_content('Germinação de semente de maçã')
  expect(page).to have_content('Youtube')
  expect(page).to have_content('https://www.youtube.com/watch?v=aQJWZVks1ec')
end

Quando('deixo o campo {string} vazio') do |string|
  fill_in string, :with => ""
end

Então('deverei receber a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end