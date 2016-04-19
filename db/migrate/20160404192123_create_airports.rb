class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
    	t.string :place
    	t.string :code
      t.integer :ticket_id
      t.timestamps
    end
  end
  def down
  drop :airports
  end
end
