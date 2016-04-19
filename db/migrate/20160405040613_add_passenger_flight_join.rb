class AddPassengerFlightJoin < ActiveRecord::Migration
  def change
  	add_column :flights, :passenger_id,:integer
  	add_column :tickets, :passenger_id, :integer
  end
end
