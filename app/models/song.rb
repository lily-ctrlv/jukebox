class Song < ApplicationRecord
  belongs_to :playlist_song

  validates :title, presence: true
  validates :artist, presence: true
  validates :album, presence: true
  validates :duration
  validatees :genres
end
