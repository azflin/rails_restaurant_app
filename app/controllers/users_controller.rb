class UsersController < ApplicationController


	#This is sign up page
	def new
		@user = User.new
	end

	# Handles sign up submisison
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to login_path
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
	end

end

