class ApplicationController < ActionController::Base
	 before_action :configure_permitted_parameters, if: :devise_controller?

  	protected

  	def configure_permitted_parameters
   	 devise_parameter_sanitizer.for(:sign_up) << :username
  	end
  	
  	include Pundit
  	protect_from_forgery
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
