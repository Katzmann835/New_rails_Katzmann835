class CreateRestPrices < ActiveRecord::Migration[8.0]
  def change
    create_table :rest_prices do |t|
      t.references :prices, null: false, foreign_key: true
      t.references :resturants, null: false, foreign_key: true

      t.timestamps
    end
  end
end
