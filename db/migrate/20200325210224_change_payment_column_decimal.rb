class ChangePaymentColumnDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :payments, :amount, :decimal
  end
end
