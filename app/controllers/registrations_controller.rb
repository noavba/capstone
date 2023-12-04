class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  # IF EVERYTHING BREAKS, DELETE THIS LINE BELOW I JUST ADDED THIS
  def index
    @user = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_now
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created an account, Thank you"
    else
      flash[:alert] = "Username taken, please choose something different"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end