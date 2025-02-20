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
  resources :historico_acao
  resources :premios
  resources :categoria_premios
  resources :premios_categorias
  resources :resgates
  resources :resgate_premios
  resources :acao_locals

  root "pessoas#index"
end
