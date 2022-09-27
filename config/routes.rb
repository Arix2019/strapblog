Rails.application.routes.draw do
  resources :categories
  root 'articles#index'
  # get '/article/:id', to: 'articles#show'

  resources :articles
end
