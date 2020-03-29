class Shipment < ApplicationRecord
  belongs_to :warehouse
  belongs_to :shipmentmethod
  belongs_to :shipmentstatus
  has_many :warehouses
  has_many :locations, through: :warehouses
  has_many :containers
  has_many :invoiceshipments
  has_many :invoices, through: :invoiceshipments

  validates :shipmentnum, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, presence: true
  validates :date, presence: true
  validates :quantity, numericality: { greater_than: 1 }, presence: true
  validates :warehouse_id, presence: true
  validates :shipmentmethod_id, presence: true
  validates :shipmentstatus_id, presence: true

end
