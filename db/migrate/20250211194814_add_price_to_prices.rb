class AddPriceToPrices < ActiveRecord::Migration[8.0]
  def change
    add_column :prices, :price, :float
  end
end
