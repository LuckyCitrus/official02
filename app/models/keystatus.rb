class Keystatus < ApplicationRecord
	#belongs_to :car
	
	validates :keystatus, presence: true, length: { maximum: 128 }
end
