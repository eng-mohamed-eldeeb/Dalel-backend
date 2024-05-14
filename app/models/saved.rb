class Saved < ApplicationRecord
  belongs_to :user
  belongs_to :product, optional: true
  belongs_to :event, optional: true
  belongs_to :character, optional: true

  validates :user_id, uniqueness: { scope: [:product_id, :event_id, :character_id] }

end
