class AdminController < ApplicationController

  def index
    @inquiries = Inquiry.all
  end
end


