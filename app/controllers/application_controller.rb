class ApplicationController < ActionController::Base
  def logged_in?
    session[:id] ? true : false
  end
end
