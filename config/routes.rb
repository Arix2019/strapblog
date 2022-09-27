Rails.application.routes.draw do
  devise_for :users
  resources :categories
  root 'articles#index'
  # get '/article/:id', to: 'articles#show'

  resources :articles
end
