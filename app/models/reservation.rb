class Reservation < ActiveRecord::Base
	belongs_to :restaurant

	validates :party_size, presence: true
	validate :capacity_exists

	def capacity_exists
		existing_reservations = Reservation.where("restaurant_id = ? and reserved_at > ? and reserved_at < ?", 
											self.restaurant_id, self.reserved_at.beginning_of_hour, self.reserved_at.end_of_hour)
		total_seats_reserved = existing_reservations.sum(:party_size) 
		if party_size > self.restaurant.capacity - total_seats_reserved
			errors[:base] << "Capacity exceeded"
		end
	end

end
