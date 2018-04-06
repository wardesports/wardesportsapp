Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations" }

  resources :users
  resources :groups
  resources :games

  resources :events do
    member do
      get 'join'
      get 'leave'
    end
  end

  root "welcome#index"

end
