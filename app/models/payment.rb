class Payment < ApplicationRecord
  belongs_to :paymentstatus
  belongs_to :paymentmethod
  belongs_to :customer
end
