class AddTicketIdToPassenger < ActiveRecord::Migration
  def change
  	add_column :passengers, :ticket_id, :integer, :index => false
  end
end
