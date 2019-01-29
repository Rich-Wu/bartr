class Api::OffersController < Api::BaseController
  def create
    offer = Offer.new(offer_params)
    commodity = Commodity.new(name: params[:name])
    commodity.image.attach(params[:image])
    if commodity.valid?
      commodity.save
    else
      respond_with false
    end
    offer.commodity = commodity
    offer.status = 0
    if offer.save
      respond_with :api, offer
    else
      respond_with false
    end
  end

  def update
    offer = Offer.find(params[:id])
    offer.update(item_params)
    offer.status = 0
    offer.commodity.image.attach(params[:commodity][:image])
    offer.commodity.save
    offer.trades.each do |trade|
      trade.status = 1
      trade.save
    end
    respond_with offer, json: offer
  end

  def destroy
    respond_with Offer.destroy(params[:id])
  end

  def show
    respond_with Offer.find(params[:id])
  end

  private

  def offer_params
    params.require(:offer).permit(:user_id, :commodity_id, :quantity, :unit, :status, :image)
  end

end
