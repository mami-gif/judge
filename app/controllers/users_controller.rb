class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def login_form
	end	
end
