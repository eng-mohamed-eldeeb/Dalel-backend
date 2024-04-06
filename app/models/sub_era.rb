class SubEra < ApplicationRecord

  has_many :sections
  has_many :characters
  
  belongs_to :era

  validates :arabic_name, presence: true
  validates :english_name, presence: true
  validates :arabic_info, presence: true
  validates :english_info, presence: true
  validates :era_id, presence: true

  accepts_nested_attributes_for :sections, allow_destroy: true
  
  def self.ransackable_attributes(auth_object = nil)
    ["arabic_info", "created_at", "english_info", "era_id", "id", "name", "updated_at"]
  end
end
