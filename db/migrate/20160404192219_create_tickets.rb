class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.string :passenger
    	t.string :seat_number
    	t.integer :ticket_id
    	t.integer :flight_id

      t.timestamps
    end
  end
end
