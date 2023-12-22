class ApplicationController < ActionController::Base
    protect_from_forgery
    include ActionController::MimeResponds
    respond_to :json

    before_action :update_allowed_parameters, if: :devise_controller?


    def confirmed
    end

    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
      # devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
    end
end
