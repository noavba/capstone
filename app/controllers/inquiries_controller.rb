class InquiriesController < ApplicationController
  def index
    @inquiries = Inquiry.all
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    
    if @inquiry.save
      redirect_to @inquiry
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:fname, :lname, :mname, :is_Canadian,:english_test_written, :aboutMe, :file)
    end
end

