class ApplicationController < ActionController::Base
 before_action :authorize
 protect_from_forgery with: :exception
 protected
 def authorize
 	unless User.find_by(id: session[:user_id])
 		redirect_to login_url, alert: "First you need to Sign Up"
 	end
 end
end
