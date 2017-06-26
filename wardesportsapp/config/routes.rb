Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {registrations: "registrations" }
  resources :games

  resources :events do
    member do
      get 'join'
      get 'leave'
    end
  end

  resources :users
  root "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
