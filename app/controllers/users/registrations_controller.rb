# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  private

  def respond_with(resource, _opts = {})
    if request.method == "POST" && resource.persisted?
      render json: {
        status: 200,
        user: resource
      }, status: :ok
    elsif request.method == "DELETE"
      render json: {
        status: 200,
        message: "Account deleted successfully."
      }, status: :ok
    else
      render json: {
        status: 422,
        message: "User couldn't be created successfully. #{resource.errors.full_messages.to_sentence}"
      }, status: :unprocessable_entity
    end
  end
end
