class Price < ApplicationRecord
  has_many :rest_price, dependent: :destroy
end

# price = Price.find(...)
# price.rest_price.count