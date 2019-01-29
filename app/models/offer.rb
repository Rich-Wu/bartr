class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :commodity, dependent: :destroy
  has_many :trades, dependent: :destroy

  def act?
    if self.trades.empty?
      return false
    elsif
      self.trades.each do |trade|
        if trade.status == 1 || trade.status == 3
          return false
        end
      end
      return true
    end
  end
end
