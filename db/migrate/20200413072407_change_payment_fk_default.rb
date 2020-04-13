class ChangePaymentFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :payments, :paymentstatus_id, 0
    change_column_default :payments, :paymentmethod_id, 0

  end
end
