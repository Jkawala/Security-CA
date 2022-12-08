Rails.application.routes.draw do
#always have a specified route 
get 'tutorial/index'
get 'document/index'
  resources :posts
  resources :document
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "posts#index"
end
