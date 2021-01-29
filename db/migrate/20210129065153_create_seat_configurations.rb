class CreateSeatConfigurations < ActiveRecord::Migration
  def change
    create_table :seat_configurations do |t|
      t.string :category
      t.integer :seats_in_a_row
      t.integer :no_of_rows
      t.decimal :base_price

      t.timestamps null: false
    end
  end
end
