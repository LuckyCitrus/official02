class Shipment < ApplicationRecord
  belongs_to :warehouse
  belongs_to :shipmentmethod
  belongs_to :shipmentstatus
  has_many :warehouses
  has_many :locations, through: :warehouses
  has_many :containers
  has_many :invoiceshipments
  has_many :invoices, through: :invoiceshipments

  validates :shipmentnum, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }
  validates :date, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 1 }
  validates :warehouse_id, presence: true
  validates :shipmentmethod_id, presence: true
  validates :shipmentstatus_id, presence: true

end
