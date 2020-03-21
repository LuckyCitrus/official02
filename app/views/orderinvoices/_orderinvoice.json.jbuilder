json.extract! orderinvoice, :id, :order_id, :invoice_id, :created_at, :updated_at
json.url orderinvoice_url(orderinvoice, format: :json)
