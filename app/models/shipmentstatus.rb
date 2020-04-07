class Shipmentstatus < ApplicationRecord

  #delete cascading
  has_many :shipments, dependent: :destroy

  #field validation
  validates :shipmentstatus, presence: true, length: { maximum: 128 }
end
