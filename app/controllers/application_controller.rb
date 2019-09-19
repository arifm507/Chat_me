class ApplicationController < ActionController::Base
	helper_method :current_user, :logged_in?, :user_details

	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	def user_details
		@user_details ||= UserDetail.find_by(user_id: current_user)
	end
	def logged_in?
		!!current_user
	end

	def require_user
		if !logged_in?
			flash[:error] = "You must loged in first"
			redirect_to login_path
		end
	end

end
