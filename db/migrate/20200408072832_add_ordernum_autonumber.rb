class AddOrdernumAutonumber < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_column :orders, :ordernum, 'integer USING CAST(ordernum AS integer)'
      dir.up { execute "CREATE SEQUENCE ordernum_seq OWNED BY orders.ordernum INCREMENT BY 1015 START WITH 440400"
        execute "ALTER TABLE orders ALTER COLUMN ordernum SET DEFAULT NEXTVAL('ordernum_seq');"
        }
    end
  end
end
