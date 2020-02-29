class RemoveTotalBidAmountFromEventTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column :event_tracks, :total_bid_amount
  end
end
