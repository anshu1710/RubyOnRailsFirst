class UserMailer < ApplicationMailer
  default from: 'rubyfirsttest@gmail.com'
  layout "mailer"
  def websiteAssign(user)
    @user = user
   
    mail(to: @user.email, subject: 'Your Website Assignment')
  end
end