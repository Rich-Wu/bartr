module TradesHelper

  def tradeStatus(tradeId)
    status = Trade.find(tradeId).status
    if status == 0
      return "Not Accepted"
    elsif status == 1
      return "Trade Declined"
    elsif status == 2
      return "Trade Accepted; Pending Completion"
    elsif status == 3
      return "Trade Completed"
    end
  end

end
