class AddAmountToBids < ActiveRecord::Migration[5.2]
  def change
    add_monetize :bids, :amount, currency: { present: false }
  end
end
