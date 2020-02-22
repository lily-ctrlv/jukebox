class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :playlist_song

  validates :amount, presence: true
end
