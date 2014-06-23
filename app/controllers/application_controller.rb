class ApplicationController < ActionController::Base

 # linha 3- 12 > add dados no banco de dados.
 	
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
      # you control which attributes can be updated or used for sign in here
    end
end

