class CreateRestPrices < ActiveRecord::Migration[8.0]
  def change
    create_table :rest_prices do |t|
      t.references :price, null: false, foreign_key: true
      t.belongs_to :resturant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
