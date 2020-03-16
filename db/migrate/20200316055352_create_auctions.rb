class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.string :auctionname
      t.string :address
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
