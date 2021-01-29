class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :airline
      t.integer :origin_airport_id
      t.integer :destination_airport_id
      t.datetime :departure_datetime
      t.datetime :arrival_datetime
      t.string :flight_no
      t.integer :airplane_id

      t.timestamps null: false
    end
  end
end
