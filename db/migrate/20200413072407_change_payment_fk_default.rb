class ChangePaymentFkDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default :payments, :paymentstatus_id, 1
    change_column_default :payments, :paymentmethod_id, 1

  end
end
