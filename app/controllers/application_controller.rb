class ApplicationController < ActionController::Base

 # linha 3- 12 > add dados no banco de dados.

  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
 

  protected
  	# para salvar no banco de dados.
    def configure_permitted_parameters                        # atributos para salvar no banco de dados
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :data, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation, :current_password) }
      # you control which attributes can be updated or used for sign in here
    end
end

