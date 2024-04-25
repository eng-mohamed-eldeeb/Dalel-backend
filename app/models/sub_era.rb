class SubEra < ApplicationRecord
  def self.ransackable_associations(auth_object = nil)
    ["characters", "era", "sections"]
  end

  has_many :sections
  has_many :characters
  has_many :events

  belongs_to :era

  validates :arabic_name, presence: true
  validates :english_name, presence: true
  validates :arabic_info, presence: true
  validates :english_info, presence: true
  validates :era_id, presence: true

  accepts_nested_attributes_for :sections, allow_destroy: true

  #  get eight characters from the database
  require 'date'

  def get_characters
    self.characters
  end

  # get eight events from the database
  def get_events
    self.events
  end

  # get_events_happed_on_this_day
  def get_events_happed_on_this_day
    self.events.where("start_date <= ? AND end_date >= ?", Date.today.end_of_day, Date.today.beginning_of_day)
  end


  def self.ransackable_attributes(auth_object = nil)
    ["arabic_info", "created_at", "english_info", "era_id", "id", "name", "updated_at"]
  end
end
