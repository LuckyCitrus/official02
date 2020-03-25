json.extract! payment, :id, :paymentnum,:date, :amount, :paymentstatus_id, :paymentmethod_id, :customer_id, :invoice_id,:created_at, :updated_at
json.url payment_url(payment, format: :json)
