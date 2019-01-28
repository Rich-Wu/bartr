class TradesController < ApplicationController
  include TradesHelper
  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    if @trade.valid?
      @trade.status = 0
      @trade.save
      @trade.offer.status = 1
      @trade.offer.save
    end
    redirect_to offer_path(@trade.offer_id)
  end

  def accept
    @trade = Trade.find(params[:id])
    @trade.status = 2
    @trade.save
    @trade.offer.status = 2
    @trade.offer.save
    redirect_to offer_path(@trade.offer.id)
  end

  def decline
    @trade = Trade.find(params[:id])
    @trade.status = 2
    @trade.save
    if @trade.offer.trades.empty?
      @trade.offer.status = 0
      @trade.offer.save
    end
    redirect_to offer_path(@trade.offer.id)
  end

  def update
  end

  def read
  end

  def index
    @trades = Trade.where(user_id: session[:id])
  end

  private

  def trade_params
    params.require(:trade).permit(:user_id, :offer_id, :quantity, :unit, :name, :image, :status)
  end
end
