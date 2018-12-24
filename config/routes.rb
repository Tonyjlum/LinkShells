Rails.application.routes.draw do
  post "users/", to: "users#login", as: "login_in"
  resources :users
  root 'users#index'
end
