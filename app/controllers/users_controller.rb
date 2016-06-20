class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
   user = User.new(user_params) 
   user.save
   redirect_to new_user_path
  end

  def show
    @user = User.find_by(id: params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
