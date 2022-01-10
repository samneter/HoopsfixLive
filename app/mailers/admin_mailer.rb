class AdminMailer < ApplicationMailer
  default from: 'hoopsfixlive@gmail.com'

  def submission_email(user)
    @user = User.first
    @login_url  = 'http://hoopsfix.com/live/users/sign_in'
    mail(to: 'sam@hoopsfix.com', subject: 'New live stream submission')
  end
end

