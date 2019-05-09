class UserNotifierMailer < ApplicationMailer
  default from: 's.rendon.g@gmail.com'

  def welcome_user(user)
    @user = user
    @url = "https://struck-app-heruku-16.herokuapp.com/"
    mail(to: @user.email, subject: "welcome User")
  end

  def new_article_created(email, title, id)
    @email = email
    @title = title
    @id = id
    @url = "https://struck-app-heruku-16.herokuapp.com/article/#{@id}"
    mail(to: @email, subject: "#{@title} new article created on truckapp")
  end

end
