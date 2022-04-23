class Airport 
	attr_reader :name
	attr_reader :planes

	def initialize name
		@name = name
		@planes = []
	end

	def add_plane plane
		@planes << plane
	end
end

class Plane 
	attr_reader :model

	def initialize model
		@model = model 
	end
end

airports = []

airport1 = Airport.new 'Minsk'
airport2 = Airport.new 'Dubai'

airports << airport1
airports << airport2

plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'IL-86'
plane3 = Plane.new 'Airbus-320'

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

plane4 = Plane.new 'Boeing-500'
plane5 = Plane.new 'IL-90'
plane6 = Plane.new 'Airbus-100'

airport2.add_plane plane4 
airport2.add_plane plane5
airport2.add_plane plane6

airports.each do |airport|
	puts "Airport: #{airport.name}"

	airport.planes.each do |plane|
		puts "Plane: #{plane.model}"
	end
end