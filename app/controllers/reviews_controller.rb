class ReviewsController < ApplicationController

  def create
    Review.create("rest_id" => params["rest_id"],
                  "rating" => params["rating"],
                  "content" => params["content"])
    redirect_to "/restaurants/#{params["rest_id"]}"

  end


end
