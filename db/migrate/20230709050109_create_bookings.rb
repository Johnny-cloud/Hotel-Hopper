class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.integer :room_id
      t.string :date_in
      t.string :date_out

      t.timestamps
    end
  end
end
