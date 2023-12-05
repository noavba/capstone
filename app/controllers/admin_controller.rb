class AdminController < ApplicationController
  before_action :authorize_user
  def index
    @inquiries = Inquiry.all
  end

  private
  #only user account named admin can view this page
  def authorize_user
    unless Current.user && Current.user.username == "admin"
      flash[:alert] = " You are not authorized to view this page"
      redirect_to root_path
    end
  end
end


