class EditOrderAuctionsIncremental < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up { execute "ALTER SEQUENCE order_auctions_id_seq RESTART WITH 100" }
    end
  end
end
