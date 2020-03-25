json.extract! invoice, :id, :invoicedate, :duedate, :customer_id, :employee_id, :invoicestatus_id, :amountdue, :invoicenum,:created_at, :updated_at
json.url invoice_url(invoice, format: :json)
