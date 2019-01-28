class TradesController < ApplicationController
  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    if @trade.valid?
      @trade.save
    end
    redirect_to offer_path(@trade.offer_id)
  end

  def update
  end

  def read
  end

  def index
  end

  private

  def trade_params
    params.require(:trade).permit(:user_id, :offer_id, :quantity, :unit, :name, :image)
  end
end
