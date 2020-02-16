# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :ideas
  get 'pages/info', controller: 'pages', action: 'info'

  root to: redirect('/ideas') ## what is the home page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
