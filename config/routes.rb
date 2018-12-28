Rails.application.routes.draw do
  resources :confirms, except: :create
  resources :events
  resources :sessions
  resources :ownerships
  resources :games, only: [:index, :show]
  post "users/", to: "users#login", as: "login_in"
  resources :users
  root 'users#index'

  post '/joinconfirms', to: "confirms#create", as: "join_event"

  post '/logout', to: 'sessions#destroy', as: "logout"
end
