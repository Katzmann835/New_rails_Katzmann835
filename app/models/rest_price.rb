class RestPrice < ApplicationRecord
  belongs_to :price
  belongs_to :resturant
end

# li = RestPrice.find(....)
# li.price.title