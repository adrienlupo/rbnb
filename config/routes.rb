Rails.application.routes.draw do
  devise_for :users
  root to: "motorcycles#home"
  resources :motorcycles, except: [:index]
  # get "users/:id/bookings", to "users#bookings", as :user_bookings

  get "/profil", to: "users#profil"
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # My bookings >> yakamoto/users/bookings
  # Defines the root path route ("/")
