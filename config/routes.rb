Rails.application.routes.draw do
  post "users/", to: "users#login", as: "login_in"
  resources :confirms, except: [:create, :destroy]
  resources :events, except: [:destroy]
  resources :sessions
  resources :ownerships
  resources :games, only: [:index, :show]
  resources :users

  root 'users#index'
  post "thereisnocowlevel", to: "events#destroy", as: "delete_event"
  post '/joinconfirms', to: "confirms#create", as: "join_event"
  post '.deleteconfirms', to: "confirms#destroy", as: "leave_event"
  post '/logout', to: 'sessions#destroy', as: "logout"
end
