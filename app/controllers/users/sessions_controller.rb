# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :check_confirmation, only: :create
  respond_to :json

  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      render json: { success: 'Logged in' }, status: :ok
    else
      render json: { error: 'Invalid credentials' }, status: :unauthorized
    end
  end

  private
  def check_confirmation
    user = User.find_by(email: params[:user][:email])
    if user && !user.confirmed?
      render json: { error: 'Unconfirmed' }, status: :unauthorized
    end
  end
end
