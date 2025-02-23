class Resturant < ApplicationRecord
  has_many :rest_price
  has_many :prices, through: :rest_prices

  before_destroy
  :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    unless rest_price.empty?
      errors.add(:price, 'Resturants present')
      throw :abort
    end
  end
end
