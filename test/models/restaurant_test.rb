require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

	#this will run before each test
	def setup
		@restaurant = restaurants(:one)
	end

	#this will run after each test 
	def teardown
	end

	test "the fixture should be valid" do 
		assert @restaurant.valid?
	end

	test "must have a valid name" do 
		@restaurant.name = nil
		assert_not @restaurant.valid? 
	end

end
