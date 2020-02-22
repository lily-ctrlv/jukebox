class Venue < ApplicationRecord
  has_many :events
  validates :postcode, presence: true
  validates :name, presence: true
end
