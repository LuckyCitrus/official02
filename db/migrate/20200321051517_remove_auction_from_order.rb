class RemoveAuctionFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :auction, null: false, foreign_key: true
  end
end
