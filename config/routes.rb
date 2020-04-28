Rails.application.routes.draw do
  resources :origins
  resources :conversations
  resources :messages
  resources :partnerships
  resources :categories
  resources :products
  resources :user_products
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  root to: "static#home"
end
