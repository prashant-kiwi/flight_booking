class CreatePassengerDetails < ActiveRecord::Migration
  def change
    create_table :passenger_details do |t|
      t.references :booking, index: true
      t.references :passenger
      t.references :seat, index: true
      t.integer :status

      t.timestamps null: false
    end
  end
end
