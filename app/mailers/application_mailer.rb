class UserMailer < ApplicationMailer
  default from: 'info@personalgifter.com'
 
  def deliver_welcome_email(user)
    @user = user
    @url  = 'http://personalgifter.com/login'
    mail(to: @user.email, subject: 'Bienvenido a Personal Gifter')
  end
end