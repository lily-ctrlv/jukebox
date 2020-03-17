class AddDateTimePlayedToEventTracks < ActiveRecord::Migration[5.2]
  def change
    add_column :event_tracks, :date_time_played, :datetime
  end
end
