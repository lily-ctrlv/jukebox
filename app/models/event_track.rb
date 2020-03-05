class EventTrack < ApplicationRecord
  belongs_to :event
  belongs_to :track, optional: true
  has_many :bids
  has_many :users

  validates :track_id, uniqueness: { scope: :event_id,
                                     message: "Track can only be added once to a playlist" }
  validates :total_bid_amount, presence: true, numericality: true
  validates :rank, presence: true, numericality: true

  monetize :total_bid_amount_cents

  def total_bids
    sum = 0
    bids.each do |bid|
      sum += bid.amount
    end
    return sum
  end

end
