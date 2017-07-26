class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :no_ppl
      t.string  :date
      t.string  :time
      t.timestamps
    end
  end
end
