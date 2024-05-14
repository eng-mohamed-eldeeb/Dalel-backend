class EventRecommendation < ApplicationRecord
  belongs_to :character
  belongs_to :event
end
