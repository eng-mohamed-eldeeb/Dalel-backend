class Era < ApplicationRecord
    has_many :sub_eras, dependent: :destroy
    has_many :era_points, dependent: :destroy

    enum tier: {a: 3, b: 2,c: 1, d: 0}

    validates :name, presence: true


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
        era = Era.all.order(:point).reverse
        era.each_with_index do |era, index|
            era.update(tier: index)
        end
    end

end
