Rails.application.routes.draw do
  get 'bookings/new'
  get 'flights/index'
  root 'flights#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
