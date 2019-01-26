class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
    end
    redirect_to root_path
  end

  def update
  end

  def read
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :birthday, :address, :phone)
  end
end
