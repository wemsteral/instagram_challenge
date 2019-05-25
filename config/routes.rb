# frozen_string_literal: true

Rails.application.routes.draw do
  get '/users/new' => 'user#new'
  post '/users' => 'user#create'

  resources :users
  resources :posts
  root 'user#index'
end
