# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :check_confirmation, only: :create
  # respond_to :json

  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      render json: { success: 'Logged in' }, status: :ok
    else
      render json: { ErrorMessage: 'Invalid credentials' }, status: :unauthorized
    end
  end

  def create
    user = User.find_by(email: params[:user][:email])

    if user && user.valid_password?(params[:user][:password])
      sign_in(:user, user)
      render json: { success: 'Logged in', user: user }, status: :ok
    else
      render json: { ErrorMessage: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private
  def check_confirmation
    user = User.find_by(email: params[:user][:email])
    if user && !user.confirmed?
      render json: { ErrorMessage: 'Unconfirmed' }, status: :unauthorized
    end
  end
end
