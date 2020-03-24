json.extract! invoiceshipment, :id, :shipment_id, :invoice_id, :created_at, :updated_at
json.url invoiceshipment_url(invoiceshipment, format: :json)
