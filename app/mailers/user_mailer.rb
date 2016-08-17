class UserMailer < ApplicationMailer
  default from: 'maheshw3@purdue.edu'
  layout "mailer"
  def websiteAssign(user)
    @user = user
    mail(to: @user.email, subject: 'Your Website Assignment')
  end
end