class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
end
