class Commodity < ApplicationRecord
  has_many :offers, dependent: :destroy
  has_many :users, through: :offers
end
