class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  protect_from_forgery
  include ActionController::MimeResponds
  # respond_to :json
  before_action :set_locale

  before_action :update_allowed_parameters, if: :devise_controller?


  def confirmed
  end

  protected
  def set_locale
    I18n.locale = extract_locale_from_accept_language_header
  end

  def extract_locale_from_accept_language_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
    # devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
  end
end
