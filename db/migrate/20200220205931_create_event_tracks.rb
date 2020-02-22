class CreateEventTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :event_tracks do |t|
      t.references :track
      t.references :event
      t.float :total_bid_amount
      t.integer :rank

      t.timestamps
    end
  end
end
