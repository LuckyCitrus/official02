class CreateActiveOrders < ActiveRecord::Migration[6.0]
  def change
    create_view :active_orders, materialized: true
  end
end
