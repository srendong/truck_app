class UsersController < ApplicationController
	before_action :authenticate_user!
	before_action :validate_user

  def show
  	@user = User.find(params[:id])
  end


  private
  	def validate_user
  		if current_user.id.to_s != params[:id]
  			redirect_to root_path
  			flash[:alert] = "You don't have permissions."
  		end
  	end
end
