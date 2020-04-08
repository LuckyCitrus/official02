class EditAuctionsIncremental < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up { execute "ALTER SEQUENCE auctions_id_seq RESTART WITH 1" }
    end
  end
end
