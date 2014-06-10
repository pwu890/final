class SessionsController < ApplicationController

  def logout
    cookies["user_id"] = nil
    redirect_to "/"
  end

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["user_id"] = the_user["id"]
        redirect_to "/restaurants"
      end
    else
      @message = "We don't recognize that username/password. Try again?"
      render "login"
    end
  end

end
