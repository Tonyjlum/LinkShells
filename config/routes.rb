Rails.application.routes.draw do
  post "users/logging", to: "users#login", as: "login_in"
  resources :events, except: [:destroy]
  resources :games, only: [:index, :show]
  resources :users, except: [:destroy]

  delete '/logout', to: 'sessions#destroy', as: "logout"
  root 'users#index'
  post "thereisnocowlevel", to: "events#destroy", as: "delete_event"
  post '/joinconfirms', to: "confirms#create", as: "join_event"
  post '.deleteconfirms', to: "confirms#destroy", as: "leave_event"
end
