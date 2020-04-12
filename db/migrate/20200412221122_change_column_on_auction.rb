class ChangeColumnOnAuction < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:auctions, :location, true)
  end
end
