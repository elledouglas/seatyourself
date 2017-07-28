class AddUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :reservations do |t|
      t.belongs_to :users
    end
  end
end
