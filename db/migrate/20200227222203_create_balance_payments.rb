class CreateBalancePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :balance_payments do |t|
      t.string :state
      t.monetize :amount
      t.string :checkout_session_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
