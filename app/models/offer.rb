class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :commodity, dependent: :destroy
  has_many :trades, dependent: :destroy
end
