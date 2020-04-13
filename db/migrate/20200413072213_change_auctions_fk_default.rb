class ChangeAuctionsFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :auctions, :location_id, 1

  end
end
