Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  "/ships"

  get '/ships', to: 'ships#show'
  get '/market', to: 'market#show'
  get '/ships/:ship_id', to: 'ships#ship_details'
  get '/ship_cargo/', to: 'ships#show'
end
