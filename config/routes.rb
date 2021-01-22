Rails.application.routes.draw do
  resources :forklifts
  resources :trailers
  resources :trucks
  resources :notes
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
