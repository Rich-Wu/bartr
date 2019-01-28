module OffersHelper
  def owner?
    Offer.find(params[:id]).user_id == session[:id] ? true : false
  end

  def currentStatus(offerId)
    status = Offer.find(offerId).status
    if status == 0
      return "No Trades"
    elsif status == 1
      return "Trade(s) Proposed"
    elsif status == 2
      return "Trade Accepted"
    elsif status == 3
      return "Trade Completed"
    end
  end

end
