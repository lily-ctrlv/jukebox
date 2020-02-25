class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :theme
      t.references :venue
      t.references :user
      t.datetime :start_date_time
      t.datetime :end_date_time

      t.timestamps
    end
  end
end
