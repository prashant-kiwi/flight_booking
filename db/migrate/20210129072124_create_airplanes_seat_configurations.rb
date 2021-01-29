class CreateAirplanesSeatConfigurations < ActiveRecord::Migration
  def change
    create_table :airplanes_seat_configurations, :id => false do |t|
      t.integer :airplane_id
      t.integer :seat_configuration_id
    end
  end
end
