class SessionsController < ApplicationController
  def new

  end
  def create
    user = User.find_by(username: params[:username].downcase)
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "logged in successfully"
    else
      flash[:alert] = "Invalid username or password"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "logged out!"
  end
end