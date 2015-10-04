class ReservationsController < ApplicationController

   def create
      @restaurant = Restaurant.find(params[:restaurant_id])
      @reservation = Reservation.new(sanitized_reservation_params)
      @reservation.restaurant_id = @restaurant.id
      #@reservation = @restaurant.reservations.build(sanitized_reservation_params)

      if @reservation.save
      	redirect_to restaurant_path(@restaurant)
      else
      	render "/restaurants/show"
      end
   end   

   private

   def sanitized_reservation_params
   	  params.require(:reservation).permit(:party_size, :reserved_at)
   end

end