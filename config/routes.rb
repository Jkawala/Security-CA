Rails.application.routes.draw do
#A secure way of getting the router 
get '/tutorial' to: "tutorial#index"
get '/document' to: "document#index"
  resources :posts
  resources :document
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "posts#index"
end
