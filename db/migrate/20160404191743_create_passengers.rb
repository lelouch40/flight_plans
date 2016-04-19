class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
    	t.string :email
    	t.string :username


      t.timestamps
    end
  end
end
