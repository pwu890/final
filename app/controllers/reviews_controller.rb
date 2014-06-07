class ReviewsController < ApplicationController

  def create
    Review.create("rest_id" => params["the_id"],
                  "rest_rating" => params["rest_rating"],
                  "rest_content" => params["rest_content"],
                  "food_rating" => params["food_rating"],
                  "food_content" => params["food_content"])
    redirect_to "/restaurants/#{params["the_id"]}"

  end


end
