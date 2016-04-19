class Airport < ActiveRecord::Base
	has_many :departing_flights, foreign_key: :flight_from_id, class_name: "Flight"
  has_many :arriving_flights, foreign_key: :flight_to_id, class_name: "Flight"


	  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  }
end
