Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "homepage#index"
  post "/search", to: "homepage#search"
  post "/details", to: "homepage#details"
  post "/page", to: "homepage#page"
end
