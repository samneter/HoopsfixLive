module Previews
class AdminMailerPreview < ActionMailer::Preview
  def submission_email
    AdminMailer.with(user: User.first).submission_email
  end
end
end