class User < ApplicationRecord
  # has_secure_password
  has_many :offers
  has_many :commodities, through: :offers
  has_many :trades
end
