class HomeController < ApplicationController
	before_action :avatar


  def index
  end


  private
  	def avatar
  		@avatar = user_signed_in? ? current_user.avatar_url : nil
  	end
end
