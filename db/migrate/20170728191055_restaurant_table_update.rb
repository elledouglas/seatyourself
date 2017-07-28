class RestaurantTableUpdate < ActiveRecord::Migration[5.0]
  def change
    change_table :restaurants do |t|
      t.remove :address, :price_rance, :menu, :website, :owner_id
      t.string :price
      t.string :location
      t.string :website
    end
  end
end
