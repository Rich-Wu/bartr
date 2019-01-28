module TradesHelper

  def currentStatus(tradeId)
    status = Trade.find(tradeId).status
    if status == 0
      return "Not Accepted"
    elsif status == 1
      return "Trade Accepted; Pending Completion"
    elsif status == 2
      return "Trade Complete"
    end
  end

end
