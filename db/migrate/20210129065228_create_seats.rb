class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.references :flight, index: true
      t.references :seat_configuration, index: true
      t.string :seat_number
      t.integer :status

      t.timestamps null: false
    end
  end
end
