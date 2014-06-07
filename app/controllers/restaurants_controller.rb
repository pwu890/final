class RestaurantsController < ApplicationController

  def destroy
    resta = Restaurant.find_by("id" => params["id"])
    resta.delete
    redirect_to "/restaurants"
  end

  # Receive form submitted from /restaurants/new
  def create
    Restaurant.create(
      "name" => params["name"],
      "city_id" => params["city"],
      "state" => params["state"],
      "genre_id" => params["genre"],
      "photo_url" => params["photo"])
    redirect_to "/restaurants"
  end

  # Receive form submitted from /restaurants/edit
  def update
    resta = Restaurant.find_by("id" => params["id"])
    resta.update("name" => params["full_name"], "photo_url" => params["url"])
    redirect_to "/restaurants"
  end

end
