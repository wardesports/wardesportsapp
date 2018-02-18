Rails.application.routes.draw do
  resources :groups
  devise_for :users, controllers: {registrations: "registrations" }
  resources :games

  resources :events do
    member do
      get 'join'
      get 'leave'
    end
  end

  resources :users do
    resources :organizer
  end

  root "welcome#index"

end
