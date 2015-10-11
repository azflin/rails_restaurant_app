class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	user = User.where(id: session[:user_id])
  	if user.count>0
  		return user.first
  	else
  		return false
  	end
  end

  helper_method :current_user

  def authenticate_user
  	if current_user
  		return true
  	else
  		redirect_to login_path
  	end
  end

end
