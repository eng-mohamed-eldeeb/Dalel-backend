# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  def show
    self.resource = resource_class.confirm_by_token(params[:confirmation_token])
    yield resource if block_given?
    if resource.errors.empty?
      redirect_to root_path
    else
      # TODO: use `error_status` when the default changes to `:unprocessable_entity`.
      respond_with_navigational(resource.errors, status: :unprocessable_entity){ render :new }
    end
  end

end
