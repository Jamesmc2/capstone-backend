Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  patch "/events/update" => "events#update"

  get "/current_user" => "users#show"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/events/:week" => "events#index"
  get "/events/:id/results" => "events#results"

  get "/favorites" => "favorites#index"
  post "/favorites/:id" => "favorites#create"
  delete "favorites/:id" => "favorites#destroy"

  get "/reviews/:id" => "reviews#index"
  post "/reviews" => "reviews#create"
end
