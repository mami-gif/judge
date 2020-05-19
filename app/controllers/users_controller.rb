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
   render action: :new, notice: "保存が失敗しました"	
 end
end

def edit
 @user = User.find(params[:id])
end

def update
 user = User.find(params[:id])
 if user.update(user_params)
   redirect_to users_path, notice: "更新しました"
 else
   redirect_to edit_user_path(user), notice: "更新が失敗しました"
 end   
end

def destroy
  User.find(params[:id]).destroy
  redirect_to users_path
end

def login_form

end	

def login
 @user = User.find_by(email: params[:email], password: params[:password])
 if @user
  session[:user_id] = @user.id
  flash[:notice] = "ログインしました"
  redirect_to users_path
else
 @error_message = "メールアドレスまたはパスワードが間違っています"
 @email = params[:email]
 @password = params[:password]
 render action: :login_form
end
end

def logout
  session[:user_id] = nil
  flash[:notice] = "ログアウトしました"
  redirect_to login_path
end

private
def user_params
 params.require(:user).permit(:first_name, :last_name, :email, :password, :age, :female_male, :postal_code, :address, :tel)
end
end	
