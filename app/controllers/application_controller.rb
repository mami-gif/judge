class ApplicationController < ActionController::Base
	before_action :set_current_user
	def set_current_user
	  @current_user = User.find_by(id: session[:user_id])
	end

    def not_authenticate_user
      session[:user_id] == nil
    end
end
