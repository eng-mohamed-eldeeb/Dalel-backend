class Character < ApplicationRecord
    belongs_to :sub_era
    has_many :character_sections, dependent: :destroy
    has_one_attached :thumb_image
    has_one_attached :cover_image

    # get random 10 characters related to the sub era
    def self.get_random_characters(sub_era)
        Character.where(sub_era_id: sub_era).with_attached_thumb_image.order("RANDOM()").limit(10)        
    end

    accepts_nested_attributes_for :character_sections, allow_destroy: true

    def self.ransackable_attributes(auth_object = nil)
        ["arabic_info", "created_at", "date_of_birth", "date_of_death", "english_info", "english_name", "id", "sub_era_id", "updated_at"]
    end
    
end
