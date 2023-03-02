Rails.application.routes.draw do
  devise_for :users
  root to: "motorcycles#home"

  resources :motorcycles, except: [:index] do
    resources :bookings, only: %i[create new show]
end
get "/profil", to: "users#profil"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # My bookings >> yakamoto/users/bookings
  # Defines the root path route ("/")
