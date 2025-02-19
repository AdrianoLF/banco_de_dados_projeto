# config/routes.rb
Rails.application.routes.draw do
  resources :pessoas
  resources :pontuacao_pessoas
  resources :local_acaos
  resources :pessoas_locais
  resources :acaos
  resources :tipo_acaos
  resources :genero_acaos
  resources :registros_acao
  resources :historico_acaos
  resources :premios
  resources :categoria_premios
  resources :premio_categorias
  resources :resgates
  resources :resgate_premios
  resources :acao_locals

  root "pessoas#index"
end
