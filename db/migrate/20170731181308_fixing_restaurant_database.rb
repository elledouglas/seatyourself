class FixingRestaurantDatabase < ActiveRecord::Migration[5.0]
  def change
    drop_table :restaurants
  end
end
