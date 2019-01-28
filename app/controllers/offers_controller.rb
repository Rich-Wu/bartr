class OffersController < ApplicationController
  before_action :verify_login
  def new
    @offer = Offer.new
    @commodity = Commodity.new
  end

  def create
    @offer = Offer.new(offer_params)
    @commodity = Commodity.new(commodity_params)
  end

  def update
  end

  def read
  end

  private

  def verify_login
    if !logged_in?
      redirect_to login_path
    end
  end

  def offer_params
    params.require(:offer).permit(:user_id, :commodity_id, :quantity, :unit)
  end

  def commodity_params
    params.require(:commodity).permit(:name, :image)
  end
end
