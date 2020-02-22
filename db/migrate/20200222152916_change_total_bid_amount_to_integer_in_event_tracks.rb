class ChangeTotalBidAmountToIntegerInEventTracks < ActiveRecord::Migration[5.2]
  def change
    change_column :event_tracks, :total_bid_amount, :integer
  end
end
