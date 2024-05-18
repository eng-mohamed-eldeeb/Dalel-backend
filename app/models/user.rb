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
    characters = sub_eras.flat_map(&:characters).order(:points).reverse
    fav_era = era

    Era.find_each do |era_|
      user_era_point = era_.era_points.where(user: self).last
      fav_era_user_point = fav_era.era_points.where(user: self).last

      if user_era_point && fav_era_user_point && user_era_point.tier > fav_era_user_point.tier
        fav_era = era_
      end
    end

    if self.era_points.where.not(era: era).exists? && fav_era == era
      characters = characters.sort_by(&:points).reverse.first(4)
    else
      if fav_era.era_points.where(user: self).exists?
        two_more_characters = fav_era.sub_eras.includes(:characters).sort_by(&:point).reverse.first(2).flat_map(&:characters)
        if two_more_characters.empty?
          characters = characters.sort_by(&:points).reverse.first(4)
        else
          characters = characters.sort_by(&:points).reverse.first(2) + two_more_characters
        end
      end
    end
    characters.first(4)
    characters
end

  def get_4_recommended_events(era)
    sub_eras = era.sub_eras.includes(:events).sort_by(&:point).reverse.first(10)
    events = sub_eras.flat_map(&:events)
    fav_era = era

    Era.find_each do |era_|
      user_era_point = era_.era_points.where(user: self).last
      fav_era_user_point = fav_era.era_points.where(user: self).last

      if user_era_point && fav_era_user_point && user_era_point.tier > fav_era_user_point.tier
        fav_era = era_
      end
    end

    return [] if events.empty?

    if self.event_points.any?
      unseen_events = self.event_points.where(seen: false).map(&:event)
      events = events.select { |event| unseen_events.include?(event) }
    end

    if self.era_points.where.not(era: era).exists? && fav_era == era
      events = events.sort_by(&:points).reverse.first(4)
    else
      if fav_era.era_points.where(user: self).exists?
        two_more_events = fav_era.sub_eras.includes(:events).sort_by(&:point).reverse.first(2).flat_map(&:events)
        if two_more_events.empty?
          events = events.sort_by(&:points).reverse.first(4)
        else
          events = events.sort_by(&:points).reverse.first(2) + two_more_events
        end
      else
        events = events.sort_by(&:points).reverse.first(4)
      end
    end

    events
  end

end
