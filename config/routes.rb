Final::Application.routes.draw do

  # Home page
  get "/" => "restaurants#index"

  # Resource: Restaurants

  # -- Read
  get "/restaurants" => 'restaurants#index'
  get "/restaurants/:id" => 'restaurants#show'


  # Resource: Cities

  # -- Read
  get "/city" => 'city#index'
  get "/city/:id" => 'city#show'

end
