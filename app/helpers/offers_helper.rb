module OffersHelper

  def owner?
    Offer.find(params[:id]).user_id == session[:id] ? true : false
  end

end
