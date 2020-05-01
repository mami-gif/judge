class UsersController < ApplicationController
	def index
		@users = User.all
	end
	
	def show
    	@user = User.find_by(id: params[:id])
    end
	
	def new
		@user = User.new
	end	

	def create
		user = User.new(user_params)
		if user.save
		   redirect_to users_path, notice: "保存が成功しました"
		else  
		　 redirect_to new_user_path, notice: "保存が失敗しました"	
		end
	
	def login_form

	end	

	def login
		
	

	end	


	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password, :age, :female_male, :postal_code, :address, :tel)
		end
	end	
end
