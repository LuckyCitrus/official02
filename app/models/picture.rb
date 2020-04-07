class Picture < ApplicationRecord

  #dependencies
  belongs_to :order

  #fields validation
  validates :order_id, presence: true

end
