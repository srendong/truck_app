class ApplicationController < ActionController::Base
	## add parameters/column to Devise
	before_action :add_parameters_to_user, if: :devise_controller?
	before_action :avatar

	protected

		def add_parameters_to_user
			devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
		end

		def avatar
	  		@avatar = user_signed_in? ? current_user.avatar_url : nil
	  	end
end
