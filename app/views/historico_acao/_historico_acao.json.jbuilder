json.extract! historico_acao, :id, :pessoa_id, :acao_id, :created_at, :updated_at
json.url historico_acao_url(historico_acao, format: :json)
