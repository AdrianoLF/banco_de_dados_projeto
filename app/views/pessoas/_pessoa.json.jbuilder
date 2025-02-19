json.extract! pessoa, :id, :nome, :email, :data_nascimento, :sexo, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
