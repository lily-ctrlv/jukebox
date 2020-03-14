class AddDoneToSchema < ActiveRecord::Migration[5.2]
  def change
    add_column :event_tracks, :done, :boolean,  default: false
  end
end
