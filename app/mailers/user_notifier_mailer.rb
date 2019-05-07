class UserNotifierMailer < ApplicationMailer
  default from: 's.rendon.g@gmail.com'

  def welcome_user(user)
    @user = user
    @url = "https://localhost:3000"
    mail(to: @user.email, subject: "welcome User")
  end
end
