class User < ActiveRecord::Base
	has_many :reservations
	has_many :restaurants

	has_secure_password

	validates :email, :first_name, :last_name, presence: true
end
