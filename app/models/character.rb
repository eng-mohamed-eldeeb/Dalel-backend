class Character < ApplicationRecord
    belongs_to :sub_era
    has_many :character_sections, dependent: :destroy
    has_many :events
    has_many :saveds
    has_many :character_points
    has_many :products


    accepts_nested_attributes_for :character_sections, allow_destroy: true
    def self.ransackable_associations(auth_object = nil)
        ["character_points", "character_sections", "events", "products", "saveds", "sub_era"]
      end

    def self.ransackable_attributes(auth_object = nil)
        ["arabic_info", "created_at", "date_of_birth", "date_of_death", "english_info", "english_name", "id", "sub_era_id", "updated_at"]
    end
end
