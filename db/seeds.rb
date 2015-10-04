# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all

10.times do 
	r = Restaurant.new
	r.name = Faker::Company.name
	r.capacity = Faker::Number.number(2).to_i
	r.address = Faker::Address.street_address
	r.cuisine_type_id = 1
	r.city = Faker::Address.city
	r.phone_number = Faker::PhoneNumber.phone_number
	r.postal_code = "L6C2G8"
	r.save
end