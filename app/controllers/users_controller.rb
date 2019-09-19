class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  def show

  end

  def create
  	@user = User.new(user_params)    
  	@user.save
    if @user
      user_detail = UserDetail.new
      user_detail.user_id = @user.id
      user_detail.save
  	end
    flash[:success] = "You have successfully registered"
  	redirect_to login_path
  end

  def edit
     @user_detail = UserDetail.find_by(user_id: current_user)
  end

  def update
    user_detail = UserDetail.find_by(user_id: current_user)
    if user_detail.update(user_detail_params)
      redirect_to user_path(current_user)
    else
      redirect_to user_path(current_user)
    end
  end

  private
  def user_params
  	params.require(:user).permit(:username, :password)
  end
  def user_detail_params
    params.require(:user_detail).permit(:name, :email, :contact, :gender, :dob, :company, :address, :about, current_user)
    
  end
end
