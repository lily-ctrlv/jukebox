class AddTotalBidAmountToEventTracks < ActiveRecord::Migration[5.2]
  def change
    add_monetize :event_tracks, :total_bid_amount, currency: { present: false }
  end
end
