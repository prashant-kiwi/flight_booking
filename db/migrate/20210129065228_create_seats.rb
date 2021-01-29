class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :flight_id
      t.integer :seat_configuration_id
      t.string :seat_number
      t.string :pnr_number
      t.integer :status

      t.timestamps null: false
    end
  end
end
