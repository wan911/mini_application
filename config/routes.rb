Rails.application.routes.draw do
  devise_for :users
  resources :tweets, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :users, only: :destroy 
  root 'tweets#index'
end