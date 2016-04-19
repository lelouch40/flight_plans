class AddFlightsToAirports < ActiveRecord::Migration
  def change
  	  	add_column :airports, :flight_id, :integer
  end
end
