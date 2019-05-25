# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  post 'home/index' => 'user#create'
  resources :users
  resources :posts
  root 'home#index'
end
