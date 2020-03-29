class Container < ApplicationRecord
  belongs_to :company
  belongs_to :shipment

  #Order Round
  has_many :containerorders
  has_many :orders, through: :containerorders

  validates :containernum, format: { with: /\A[a-z\d][a-z\d-]*[a-z\d-]\z/i }, presence: true
  validates :shipment_id, presence: true
  validates :company_id, presence: true

end
