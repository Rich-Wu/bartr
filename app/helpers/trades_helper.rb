module TradesHelper

  def tradeStatus(tradeId)
    status = Trade.find(tradeId).status
    if status == 0
      return "Pending Decision"
    elsif status == 1
      return "Trade Declined"
    elsif status == 2
      return "Trade Accepted; Pending Completion"
    elsif status == 3
      return "Trade Completed"
    end
  end

  def tradeVerbs(tradeId)
    status = Trade.find(tradeId).status
    if status == 0
      return "unseen"
    elsif status == 1
      return "rejected"
    elsif status == 2
      return "accepted"
    elsif status == 3
      return "completed"
    end
  end

end
