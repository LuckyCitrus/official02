class AddAuctionToCars < ActiveRecord::Migration[6.0]
  def change
    add_reference :cars, :auction, null: true, foreign_key: true
  end
end
