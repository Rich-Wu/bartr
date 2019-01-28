class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params[:password] == params[:password_confirm]
      @user = User.new(user_params)
      if @user.save
        session[:id] = @user.id
      end
    end
    redirect_to main_path
  end

  def update
    @user = User.find(session[:id])
  end

  def newinfo
    @user = User.update(session[:id], user_params)
    redirect_to account_path
  end

  def read
    if User.find_by(username: params[:username])
      @user = User.find_by(username: params[:username])
    else
      redirect_to main_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :birthday, :address, :phone)
  end
end
