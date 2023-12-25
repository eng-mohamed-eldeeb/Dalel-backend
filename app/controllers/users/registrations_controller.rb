# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # respond_to :json
  private

  def respond_with(resource, _opts = {})
    if request.method == "POST" && resource.persisted?
      render json: {
        status: 200,
        user: resource,
        success: "#{t 'registeation.confirmation_instructions'}"
      }, status: :ok
    elsif request.method == "DELETE"
      render json: {
        status: 200,
        success: "#{t 'registeation.Account_deleted_successfully'}"
      }, status: :ok
    else
      render json: {
        status: 422,
        ErrorMessage: "#{t 'registeation.unprocessable_entity'}"
      }, status: :unprocessable_entity
    end
  end
end
