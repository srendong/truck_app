class ApplicationController < ActionController::Base
	## add parameters/column to Devise
	before_action :add_parameters_to_user, if: :devise_controller?

	protected

		def add_parameters_to_user
			devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
		end
end
