class PlaylistSong < ApplicationRecord
  belongs_to :playlist
  has_many :song
  has_many :bid

  validates :total_bid_amount, presence: true
  validates :rank, presence: true
end
