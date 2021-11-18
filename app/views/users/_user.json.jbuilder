json.extract! user, :id, :user_email, :user_first_name, :user_last_name, :user_cpf, :created_at, :updated_at
json.url user_url(user, format: :json)
