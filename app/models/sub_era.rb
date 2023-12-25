class SubEra < ApplicationRecord
  belongs_to :era

  validates :arabic_name, presence: true
  validates :english_name, presence: true
  validates :arabic_info, presence: true
  validates :english_info, presence: true
  validates :era_id, presence: true
  
  def self.ransackable_attributes(auth_object = nil)
    ["arabic_info", "created_at", "english_info", "era_id", "id", "name", "updated_at"]
  end
end
