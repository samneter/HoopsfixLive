class AdminMailer < ApplicationMailer
  default from: 'notifications@hoopsfix.com'

  def submission_email
    @user = params[:user]
    @login_url  = 'http://hoopsfix.com/live/users/sign_in'
    mail(to: @user.email, subject: 'New live stream submission')
  end
end

