class User < ApplicationRecord
  # has_secure_password
  has_many :offers, dependent: :destroy
  has_many :commodities, through: :offers, dependent: :destroy
  has_many :trades, dependent: :destroy
end
