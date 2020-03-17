class Payment < ApplicationRecord
  belongs_to :paymentstatus
  belongs_to :paymentmethod
end
