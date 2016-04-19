class RenameColumnFromFlights < ActiveRecord::Migration
  def change
  	rename_column("flights","date","start_date")
  end
end
