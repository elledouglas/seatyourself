class ReCreatingReservationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :no_ppl
      t.string  :date
      t.string  :time
      t.belongs_to :user
      t.belongs_to :restaurant
      t.timestamps
    end
  end
end
