Rails.application.routes.draw do
  

  devise_for :users
  resources :users, only: [:show]

  get 'home/index'
  root 'home#index'
end
