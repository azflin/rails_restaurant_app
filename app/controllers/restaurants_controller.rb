class RestaurantsController < ApplicationController

	before_action :authenticate_user, only: [:show]

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant=Restaurant.new
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		if @restaurant.save
			redirect_to @restaurant
		else
			render 'new'
		end
	end

	def update
		@restaurant = Restaurant.find(params[:id])

		if @restaurant.update(restaurant_params)
			redirect_to @restaurant
		else
			render 'edit'
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@reservation = Reservation.new
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to restaurants_path
	end

	private
		def restaurant_params
			params.require(:restaurant).permit(:name,:address,:city,:postal_code,:capacity,:cuisine_type_id,:phone_number)
		end
end



