class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
   helper_method :current_user, :powitanie
  protected
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id] 
	end
	def auth!
		if current_user.nil?
			redirect_to zaloguj_path
		end
		
	end
	def powitanie
		if current_user.admin?
			"#{current_user.name} (admin)"
		else
			"#{current_user.name}"
		end
	end
end
