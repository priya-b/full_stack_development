class UsersController < ApplicationController
	def show
  @user = User.find(params[:id])
end

def new
  @user = User.new
end
def index
	@user = User.all
end

def create
  @user = User.new(user_params)
   @user.save
   redirect_to new_login_path
    
  end

private

  def user_params
    params.require(:user).permit(:first_name,:last_name,:user_name,:email,:phone_number,:password,
                                 :password_confirmation)
  end
end

