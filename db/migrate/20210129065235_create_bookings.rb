class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user, index: true
      t.string :booking_number
      t.string :pnr
      t.integer :status

      t.timestamps null: false
    end

    add_index :bookings, :booking_number
    add_index :bookings, :pnr
  end
end
