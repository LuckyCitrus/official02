class Keystatus < ApplicationRecord
	#belongs_to :car
	
	validates :keystatus, presence: true, length: { minimum: 2, maximum: 30 }
end
