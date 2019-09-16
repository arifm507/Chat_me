class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	@user.save
  	flash[:success] = "You have successfully registered"
  	redirect_to login_path
  end

  private
  def user_params
  	params.require(:user).permit(:username, :password)
  end
end
