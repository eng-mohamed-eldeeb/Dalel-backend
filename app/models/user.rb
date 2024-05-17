class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews
  has_many :saveds
  has_many :shopping_carts
  has_many :era_points
  has_many :sub_era_points
  has_many :character_points
  has_many :event_points
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
    sub_eras = era.sub_eras.includes(:characters).sort_by(&:point).reverse.first(10)
    a_tier_era = self.era_points.last.era.sub_eras.includes(:characters).sort_by(&:point).reverse.first(10)

    characters = sub_eras.flat_map(&:characters)
    a_tier_characters = a_tier_era.flat_map(&:characters)

    return [] if characters.empty?

    if self.character_points.any?
      unseen_characters = self.character_points.where(seen: false).map(&:character)
      characters = characters & unseen_characters
      a_tier_characters = a_tier_characters & unseen_characters
    end

    characters = characters.sort_by(&:points).reverse.first(2)
    a_tier_characters = a_tier_characters.sort_by(&:points).reverse.first(2)

    characters + a_tier_characters
  end

end
