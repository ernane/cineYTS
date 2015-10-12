Rails.application.routes.draw do
  root "filmes#index"
  resources :filmes, only: [:index, :show]
end
