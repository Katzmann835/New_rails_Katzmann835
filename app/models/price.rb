class Price < ApplicationRecord
  has_many :rest_price, dependent: :destroy
end
