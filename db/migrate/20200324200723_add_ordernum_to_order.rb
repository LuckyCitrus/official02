class AddOrdernumToOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :ordernum, :string
  end
end
