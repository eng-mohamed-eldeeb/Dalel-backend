# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :check_confirmation, only: :create
  respond_to :json

  private
  def check_confirmation
    user = User.find_by(email: params[:user][:email])
    if user && !user.confirmed?
      render json: { error: 'Unconfirmed' }, status: :unauthorized
    end
  end
end
