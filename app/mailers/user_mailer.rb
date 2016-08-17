class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
  layout "mailer"
  def websiteAssign(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Your Website Assignment')
  end
end