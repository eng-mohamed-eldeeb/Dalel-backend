class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews
  has_many :saveds
  has_many :shopping_carts
  has_many :era_points
  has_many :sub_era_points
  has_many :character_points
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

  def get_4_recommended_characters(era)
    sub_eras = era.sub_eras.sort_by { |sub_era| sub_era.point }.reverse
    sub_eras = sub_eras.first(10)
    characters = sub_eras.map(&:characters).flatten
    return [] if characters.empty?
    characters = characters.sort_by { |character| character.points }.reverse
    characters = characters.filter do |character|
      character_point = character.character_points.find_by(user: self)
      character_point && character_point.seen == false
    end if self.character_points.any?
    characters = characters.first(4)

    characters
  end

end
