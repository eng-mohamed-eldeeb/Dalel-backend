class Event < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["arabic_info", "arabic_title", "created_at", "end_date", "english_info", "english_title", "id", "start_date", "type", "updated_at"]
    end
    
    has_many :event_sections, dependent: :destroy
    has_one_attached :cover_image
    accepts_nested_attributes_for :event_sections, allow_destroy: true

    belongs_to :character
    belongs_to :sub_era

    validates :type, presence: true

    # get the events that happend on the current date
    def self.get_today_events
        Event.where("start_date = ?", Date.today.beginning_of_day.utc)
    end
  end
