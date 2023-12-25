class Section < ApplicationRecord
  belongs_to :sub_era

  validates :arabic_title, presence: true
  validates :english_title, presence: true
  validates :arabic_content, presence: true
  validates :english_content, presence: true
end
