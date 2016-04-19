class Passenger < ActiveRecord::Base
	has_many :tickets
	  has_many :bookings, :through => :tickets
	    has_many :flights, :through => :bookings
	      validates_presence_of :email
	        validates_presence_of :username


end

