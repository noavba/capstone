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
    #create a new inquiry if user clicks submit on application (must have the parameters below)
    @inquiry = Inquiry.new(inquiry_params)
    #linking user to inquiry (1 inquiry per user is permitted)
    @inquiry.user = Current.user

    ## uses validate code from app/model/inquiry.rb - validates that only one user has one inquiry, throws error if they do
    if @inquiry.valid?
      if @inquiry.save
        #delivers email to inquiry user that theyve submitted an application
        UserMailer.with(user: @inquiry.user).user_application_email.deliver_now
        #delivers email to admin to say a user has submitted an application
        UserMailer.admin_application_email.deliver_now
        redirect_to root_path
        flash[:notice] = "Successfully submitted application"
      else
        render :new, status: :unprocessable_entity
      end
    else
      redirect_to root_path
      flash[:alert] = "Error, You already created a application"
    end

  end

  private
  #inquiry params, every column in the database
  def inquiry_params
    params.require(:inquiry).permit(:fname, :lname, :mname, :is_Canadian, :written_english_test, :aboutMe, :files, :DOB,
                                    :education_one, :education_one_level, :education_one_start_date, :education_one_end_date,
                                    :education_one_degree_name, :education_one_school_name, :education_one_gpa, :education_two, :education_two_level,
                                    :education_two_start_date, :education_two_end_date, :education_two_degree_name, :education_two_school_name,
                                    :education_two_gpa, :education_three, :education_three_level, :education_three_start_date, :education_three_end_date,
                                    :education_three_degree_name, :education_three_school_name, :education_three_gpa,
                                    :skills, :interests, :job_experience, :job_experience_one_start_date,
                                    :job_experience_one_end_date, :job_role, :job_description, :skills, :resume,
                                    :transcript, :cv_letter,:english_test, :user_id, :pdf_text, files: [])
  end


end

