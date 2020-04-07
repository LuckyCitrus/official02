class Shipment < ApplicationRecord

  #dependencies
  belongs_to :warehouse
  belongs_to :shipmentmethod
  belongs_to :shipmentstatus

  #delete cascading
  has_many :containers, dependent: :destroy
  has_many :invoiceshipments, dependent: :destroy

  #associative relation
  has_many :locations, through: :warehouses
  has_many :invoices, through: :invoiceshipments
  has_many :companies, through: :containers

  #field validation
  validates :shipmentnum, presence: true, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, length: { maximum: 128 }
  validates :date, presence: true
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :warehouse_id, presence: true
  validates :shipmentmethod_id, presence: true
  validates :shipmentstatus_id, presence: true
end
