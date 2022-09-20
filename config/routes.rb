Rails.application.routes.draw do
  root 'articles#index'
  # get '/article/:id', to: 'articles#show'

  resources :articles
end
