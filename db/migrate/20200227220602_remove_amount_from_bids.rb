class RemoveAmountFromBids < ActiveRecord::Migration[5.2]
  def change
    remove_column :bids, :amount
  end
end
