class CreateFlights < ActiveRecord::Migration
  def up
    create_table :flights do |t|
    	t.integer :flight_from_id
    	t.integer :flight_to_id
      t.datetime :date
      t.integer :duration
      t.timestamps
    end
  end
  def down
  	drop_table :flights
  end
end
