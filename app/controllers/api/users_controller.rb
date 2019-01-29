class Api::UsersController < Api::BaseController
  def show
    respond_with User.all.select("email, username, address, phone").find_by(username: params[:username])
  end

  def self
    respond_with User.find(session[:id])
  end
end
