# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  devise_for :users
  root to: 'static#homepage'
end
