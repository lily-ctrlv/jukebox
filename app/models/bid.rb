class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :event_track

  validates :amount, presence: true, numericality: true

  monetize :amount_cents
end
