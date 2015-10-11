class SessionsController < ApplicationController

	#Shows login page
	def new
	end

	#Handles login submission
	def create
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to restaurants_path
		else
			flash[:notice] = "Sorry, login failed"
			render :new
		end
	end

	# Deletes session (cookie)
	def destroy
		session[:user_id]=nil
		redirect_to login_path
	end

end