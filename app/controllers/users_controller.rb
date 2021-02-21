class UsersController < ApplicationController
  def users
    @userlist = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to books_path
  end

  def show
    @user = User.find(params[:id])
    @books = @user.book
  end

  private

  def user_params
    params.require(:user).permit(:name, :usertext, :profile_image)
  end

end
