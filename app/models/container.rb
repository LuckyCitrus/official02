class Container < ApplicationRecord
  belongs_to :company
  belongs_to :shipment

  #Order Round
  has_many :containerorders
  has_many :orders, through: :containerorders

end
