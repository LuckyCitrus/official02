class CreateAuctionOrders < ActiveRecord::Migration[6.0]
  def change
    create_view :auction_orders, materialized: true
  end
end
