Final::Application.routes.draw do

  # Home page
  get "/" => "index#index"


  # Sign in/out
  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'


  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'


  # Resource: Restaurants

  # -- Create
  get "/restaurants/new" => 'restaurants#new'
  post "/restaurants" => 'restaurants#create'

  # -- Read
  get "/restaurants" => 'restaurants#index'
  get "/restaurants/:id" => 'restaurants#show'


  # Resource: Reviews

  # --- Create
  get "/reviews/new" => 'reviews#new'
  post "/reviews" => 'reviews#create'

  # --- Read
  get "/reviews" => 'reviews#index'
  get "/reviews/:id" => 'reviews#show'

  # -- Update
  get "/reviews/:id/edit" => 'reviews#edit'
  patch "/reviews/:id" => 'reviews#update'

  # --- Delete
  delete "/reviews/:id" => 'reviews#destroy'


  # Resource: Cities

  # -- Read
  get "/city" => 'city#index'
  get "/city/:id" => 'city#show'


  # Resource: Genres

  # -- Read
  get "/genre" => 'genre#index'
  get "/genre/:id" => 'genre#show'


end
