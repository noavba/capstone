class MainController < ApplicationController
  #logic behind session & being kept logged in by cookies
  # maincontroller is every page of the website, so it checks and finds the user
  # by their session id
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end
end

