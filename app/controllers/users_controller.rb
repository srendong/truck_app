class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :validate_user
	before_action :find_user, only: [:show]

  def show
  	avatar_url = current_user.avatar_url
  	@large_avatar = "#{avatar_url}&s=170"
  end


  private
  	def validate_user
  		if current_user.id.to_s != params[:id]
  			redirect_to root_path
  			flash[:alert] = "You don't have permissions."
  		end
  	end

  	def find_user
  		@user = User.find(params[:id])
  	end
end
