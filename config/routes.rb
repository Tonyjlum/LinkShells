Rails.application.routes.draw do
  resources :games
  post "users/", to: "users#login", as: "login_in"
  resources :users
  root 'users#index'
end
