class User < ApplicationRecord
  has_many :offers
  has_many :commodities, through: :offers
end
