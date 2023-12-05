class ApplicationController < ActionController::Base
  before_action :set_current_user

  #setting before antyhing, set the current user by session id (cookie)
  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end
end
