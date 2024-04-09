class Event < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["arabic_info", "arabic_title", "created_at", "end_date", "english_info", "english_title", "id", "start_date", "type", "updated_at"]
      end
    
    has_many :event_sections
    accepts_nested_attributes_for :event_sections, allow_destroy: true

    belongs_to :character
    belongs_to :sub_era
  end
