class RemoveAuctionFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :auction, null: true, foreign_key: true
  end
end