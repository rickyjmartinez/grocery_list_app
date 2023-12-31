Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :items
  resources :households

  #users
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  get "/signup" => "users#new"
  post "/users" => "users#create"

  #login
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
