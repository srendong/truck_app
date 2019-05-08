class UserNotifierMailer < ApplicationMailer
  default from: 's.rendon.g@gmail.com'

  def welcome_user(user)
    @user = user
    @url = "https://struck-app-heruku-16.herokuapp.com/"
    mail(to: @user.email, subject: "welcome User")
  end
end
