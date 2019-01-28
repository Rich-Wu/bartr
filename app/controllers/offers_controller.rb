class OffersController < ApplicationController
  include OffersHelper
  before_action :verify_login
  def new
    @offer = Offer.new
    @commodity = Commodity.new
  end

  def create
    @offer = Offer.new(offer_params)
    @commodity = Commodity.new(name: params[:name], image: params[:image])
    @commodity.save
    @offer.commodity_id = @commodity.id
    @offer.status = 0
    @offer.save
    redirect_to main_path
  end

  def update
    if !owner?
      redirect_to offers_path
    else
      @offer = Offer.find(params[:id])
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    @offer.status = 0
    redirect_to offer_path
  end

  def index
    @offers = Offer.all.order(updated_at: :desc)
  end

  def read
    @offer = Offer.find(params[:id])
  end

  private

  def verify_login
    if !logged_in?
      redirect_to login_path
    end
  end

  def offer_params
    params.require(:offer).permit(:user_id, :commodity_id, :quantity, :unit, :status)
  end

end
