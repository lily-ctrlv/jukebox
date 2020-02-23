class Track < ApplicationRecord
  has_many :event_tracks

  validates :title, presence: true
  validates :artist, presence: true
  validates :album, presence: true
end
