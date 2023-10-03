Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/current_user" => "users#show"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/events" => "events#index"

  get "/favorites" => "favorites#index"
  post "/favorites/:id" => "favorites#create"
  delete "favorites/:id" => "favorites#destroy"
end
