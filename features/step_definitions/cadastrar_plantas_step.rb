Dado('que estou na página de cadastro de planta') do
    visit 'plants/new'
end
  
Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2 
end
  
Quando('clico em salvar') do
    click_on 'Cadastrar'
end
  
Então('ela deve ser salvo no banco de dados do usuário') do
    plant = Plant.order("id").last
    expect(plant.plant_id).to eq(1)
    expect(plant.plant_name).to eq("Alface")
    expect(plant.water_hour_interval).to eq(24)
    expect(plant.fertilizer_hour_interval).to eq(72)  
end
  
Então('deverei ver ela nas minhas plantas cadastradas') do
    expect(page).to  have_content(1)
    expect(page).to  have_content("Alface")
    expect(page).to  have_content(24)
    expect(page).to  have_content(72)
end
  
Quando('deixo o campo {string} vazio') do |string|
    fill_in string, :with => ""
end
  
Então('deverei receber a mensagem de erro {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end