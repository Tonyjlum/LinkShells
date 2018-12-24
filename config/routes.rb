Rails.application.routes.draw do
  resources :ownerships
  resources :games, only: [:index, :show]
  post "users/", to: "users#login", as: "login_in"
  resources :users
  root 'users#index'
end
