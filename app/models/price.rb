class Price < ApplicationRecord
  has_many :rest_price, dependent: :destroy
  has_many :resturants, through: :rest_prices
end

# price = Price.find(...)
# price.rest_price.count