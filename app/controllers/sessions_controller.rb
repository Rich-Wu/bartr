class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if User.find_by(email: params[:email])
      user = User.find_by(email: params[:email])
      if user.password == params[:password]
        session[:id] = user.id
        redirect_to main_path
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def delete
    session[:id] = nil
    redirect_to root_path
  end

end
