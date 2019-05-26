# frozen_string_literal: true

Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  get 'signup' => 'user#new'
  post '/users' => 'user#create'
  get '/posts/index' => 'posts#index'

  resources :users
  resources :posts

  root 'user#new'
end
