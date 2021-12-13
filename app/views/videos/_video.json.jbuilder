json.extract! video, :nome_da_planta, :nome_do_video, :provedor, :link, :created_at, :updated_at
json.url video_url(video, format: :json)