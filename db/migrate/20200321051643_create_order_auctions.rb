class CreateOrderAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :order_auctions do |t|
      t.references :order, null: false, foreign_key: true
      t.references :auction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
