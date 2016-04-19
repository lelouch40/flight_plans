class AddBookingIdtoTickets < ActiveRecord::Migration
  def change
  	    add_column :tickets,:booking_id,:integer
  end
end
