Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # get '/signup', to: 'users#new', as: :signup
  # post '/signup', to: 'users#create'
  # get '/login', to: 'sessions#new', as: :login
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#destroy', as: :logout

  resources :exotic_pets, only: [:index, :show, :new, :create ] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end

  resources :bookings, only: [:index]
  # Defines the root path route ("/")
  # root "posts#index"
end
