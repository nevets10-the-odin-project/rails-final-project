class UserMailer < ApplicationMailer
  default from: 'noreply@example.com'

  def welcome_email
    @user = current_user
    @url = root_url
    mail(to: @user.email, subject: "Welcome, #{@user.username}")
  end
end
