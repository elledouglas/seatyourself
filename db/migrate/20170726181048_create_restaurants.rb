class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.text :phone
      t.string :cuisine
      t.string :price_range
      t.integer :email
      t.text :description
      t.text :time_open
      t.text :time_close
      t.timestamps
    end
  end
end
