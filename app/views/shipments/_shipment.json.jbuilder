# json.extract! shipment, :id, :date, :quantity, :container, :warehouse_id, :shipmentmethod_id, :shipmentstatus_id, :created_at, :updated_at
json.extract! shipment, :id, :date, :quantity, :warehouse_id, :shipmentmethod_id, :shipmentstatus_id, :created_at, :updated_at
json.url shipment_url(shipment, format: :json)
