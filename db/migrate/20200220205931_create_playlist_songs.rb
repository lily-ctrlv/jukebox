class CreatePlaylistSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :playlist_songs do |t|
      t.float :total_bid_amount
      t.integer :rank

      t.timestamps
    end
  end
end
