class CreateRestaurantDatabase < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.string :cuisine
      t.text   :description
      t.string :price
      t.string :location
      t.string :website
      t.belongs_to :user

      t.timestamps
    end
  end
end
