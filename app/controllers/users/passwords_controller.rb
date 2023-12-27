# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  respond_to :html
  # GET /resource/password/new
  # def new
  #   super
  # end

  # POST /resource/password
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    yield resource if block_given?
    if successfully_sent?(resource)
      return render json: { success: "#{t 'password_reset.success'}", status: 200 }, status: 200
    elsif resource_params[:email] == ""
      return render json: { ErrorMessage: "#{t 'password_reset.email_cant_be_empty'}", status: 422 }, status: 422
    elsif User.find_by(email: resource_params[:email]).nil?
      return render json: { ErrorMessage: "#{t 'password_reset.email_not_found'}", status: 422 }, status: 422
      # respond_with(resource)
    end
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  def edit
    self.resource = resource_class.new
    set_minimum_password_length
    resource.reset_password_token = params[:reset_password_token]

    respond_to do |format|
      format.html
      format.json { render json: { message: 'Password reset edit page' } }
    end
  end

  # PUT /resource/password
  # def update
  #   super
  # end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
