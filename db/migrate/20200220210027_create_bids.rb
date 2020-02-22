class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.integer :amount
      t.references :event_track
      t.references :user

      t.timestamps
    end
  end
end
