class Restaurant < ActiveRecord::Base
	validates :name, :address, presence: true
	validates :capacity, presence: true, 
			  			 numericality: { only_integer: true, greater_than: 0}
	belongs_to :cuisine_type
	has_many :reservations
end
