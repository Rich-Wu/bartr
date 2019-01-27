class User < ApplicationRecord
  has_many :tickets
  has_many :listings
end
