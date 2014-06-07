Final::Application.routes.draw do

  # Home page
  get "/" => "restaurants#index"

  # Resource: Restaurants

  # -- Create
  get "/restaurants/new" => 'restaurants#new'
  post "/restaurants" => 'restaurants#create'

  # -- Read
  get "/restaurants" => 'restaurants#index'
  get "/restaurants/:id" => 'restaurants#show'


  # Resource: Cities

  # -- Read
  get "/city" => 'city#index'
  get "/city/:id" => 'city#show'


  # Resource: Genres

  # -- Read
  get "/genre" => 'genre#index'
  get "/genre/:id" => 'genre#show'


end
