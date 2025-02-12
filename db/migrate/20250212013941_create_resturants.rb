class CreateResturants < ActiveRecord::Migration[8.0]
  def change
    create_table :resturants do |t|
      t.string :name
      t.string :cusine
      t.string :type
      t.integer :age

      t.timestamps
    end
  end
end
