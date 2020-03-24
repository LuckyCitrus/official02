class AddAuctionRefToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :auction, null: true, foreign_key: true
  end
end
