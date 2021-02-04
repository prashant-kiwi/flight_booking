class CreateAirplanesSeatConfigurations < ActiveRecord::Migration
  def change
    create_join_table :airplanes, :seat_configurations do |t|
      t.index :airplane_id
      t.index :seat_configuration_id
    end
  end
end
