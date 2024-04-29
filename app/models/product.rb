class Product < ApplicationRecord
  belongs_to :era
  belongs_to :sub_era, optional: true
  belongs_to :event, optional: true
  belongs_to :character, optional: true
  has_many :reviews

  validates :arabic_title, presence: true
  validates :english_title, presence: true
  validates :price, presence: true
  validates :arabic_description, presence: true
  validates :english_description, presence: true
  validates :era, presence: true

  has_one_attached :main_image
  has_one_attached :secondary_image
  has_one_attached :thirdary_image



  enum tier: { A: 0, B: 1, C: 2, D: 3, E: 4, F: 5}
  enum catigory: { bags: 0, hats: 1, drawings: 2, clothes: 3, antiques: 4 }



  def self.ransackable_associations(auth_object = nil)
    ["character", "era", "event", "sub_era"]
  end


  def self.ransackable_attributes(auth_object = nil)
    ["arabic_description", "arabic_title", "character_id", "created_at", "english_description", "english_title", "era_id", "event_id", "id", "price", "sub_era_id", "tier", "catigory", "updated_at"]
  end


end
