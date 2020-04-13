class ChangeOrderAuctionsFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :order_auctions, :order_id, 0
    change_column_default :order_auctions, :auction_id, 0
  end
end
