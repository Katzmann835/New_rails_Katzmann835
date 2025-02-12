class AddResturantsCounterType < ActiveRecord::Migration[8.0]
  def change
    add_column :resturant_type, :integer
    add_column :cusine, :string
  end
end
