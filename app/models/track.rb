class Track < ApplicationRecord
  has_many :event_tracks, optional: true

  validates :title, presence: true
  validates :artist, presence: true
  validates :album, presence: true
end
