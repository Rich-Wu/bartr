class PagesController < ApplicationController
  before_action :verify_login, only: :main
  def index
    if logged_in?
      redirect_to '/main'
    end
  end

  def main

  end

  private

  def verify_login
    if !logged_in?
      redirect_to '/login'
    end
  end
end
