class CreateCustomerOverviews < ActiveRecord::Migration[6.0]
  def change
    create_view :customer_overviews, materialized: true
  end
end
