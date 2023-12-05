class UserMailer < ApplicationMailer
  default from: "noreply@Easeply.com"
  layout 'mailer'
  def welcome_email
    @user = params[:user]
    @url = 'https://localhost:3000/sign_in'
    mail(to: @user.email, subject: 'Welcome to Easeply')
  end

  def user_application_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Thank you for applying!')
  end

  def admin_application_email
    mail(to: 'admin@easeply.com', subject: 'New Application Received')
  end
end
