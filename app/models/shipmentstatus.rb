class Shipmentstatus < ApplicationRecord

  #normalized for
  has_many :shipments

  #field validation
  validates :shipmentstatus, presence: true, length: { maximum: 128 }

end
