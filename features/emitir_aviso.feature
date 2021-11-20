#language: pt

  Funcionalidade: Emitir um aviso
    Como sistema
    Para acompanhar a planta

  Cenário: Emissão de aviso de rega com sucesso
    Dado que estou na página de cadastro de planta
    Quando o campo "last_water" menos "plant_water_hour_interval" for menor que "0"
    Então emitir a mensagem "Hora de regar"

  Cenário: Emissão de fertilização de poda com sucesso
    Dado que estou na página de cadastro de planta
    Quando o campo "last_fertilizer" menos "plant_fertilizer_hour_interval" for menor que "0"
    Então emitir a mensagem "Hora de fertilizar"
    