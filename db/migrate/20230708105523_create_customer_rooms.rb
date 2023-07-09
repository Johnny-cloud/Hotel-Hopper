class CreateCustomerRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_rooms do |t|
      t.integer :room_id
      t.integer :customer_id 
      t.timestamps
    end
  end
end
