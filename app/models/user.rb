class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  def self.omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |user|
      user.email = response[:info][:email]
      user.password = Devise.friendly_token[0, 20]
      user.confirmed_at = DateTime.now
    end
  end
end
