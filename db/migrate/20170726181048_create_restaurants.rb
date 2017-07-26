class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.text :phone
      t.string :cuisine
      t.string :website
      t.string :price_rance
      t.integer :owner_id
      t.text :description
      t.text :menu
      t.timestamps
    end
  end
end
