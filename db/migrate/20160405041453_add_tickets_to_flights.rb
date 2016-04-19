class AddTicketsToFlights < ActiveRecord::Migration
  def change
  	add_column :flights, :ticket_id, :integer
  end
end
