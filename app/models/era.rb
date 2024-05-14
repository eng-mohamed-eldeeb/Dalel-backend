class Era < ApplicationRecord
    has_many :sub_eras, dependent: :destroy

    validates :name, presence: true

    after_save :set_tier
    enum tier: { A: 0, B: 1, C: 2, D: 3, E: 4, F: 5}

    def self.ransackable_attributes(auth_object = nil)
        ["id", "name"]
    end

    def get_4_random_character
        character = self.sub_eras.includes(:characters).map(&:get_characters)
        character.flatten.shuffle.take(4)
    end

    def get_4_random_events
        events = self.sub_eras.includes(:events).map(&:get_events)
        events.flatten.shuffle.take(4)
    end

    def get_events_happed_on_this_day
        events = self.sub_eras.includes(:events).map(&:get_events_happed_on_this_day)
        events.flatten
    end


    def set_tier
        eras = Era.all.order(:point)
        eras.each_with_index do |era, index|
            era.update(tier: index)
        end
    end

end
