json.extract! invoice, :id, :invoicedate, :duedate, :customer_id, :employee_id, :order_id, :payment_id, :car_id, :shipment_id, :auction_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
