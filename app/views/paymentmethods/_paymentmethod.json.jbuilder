json.extract! paymentmethod, :id, :paymenttype, :created_at, :updated_at
json.url paymentmethod_url(paymentmethod, format: :json)
