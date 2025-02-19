json.extract! local_acao, :id, :nome_local, :endereco, :created_at, :updated_at
json.url local_acao_url(local_acao, format: :json)
