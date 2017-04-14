Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {registrations: "registrations" }
  resources :notifications
  resources :games, only: [:show]
  resources :events, only: [:index, :new, :create, :show, :edit, :destroy]
  resources :users
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
