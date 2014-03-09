require_relative "../lib/airport"
require_relative "../lib/plane"

describe Airport do
	let (:plane) { Plane.new }
	let (:airport) { Airport.new }
	
	it "should allow a plane to land" do
		# plane = Plane.new
		# airport = Airport.new
		# we expect the airport to have 0 planes
		expect(airport.plane_count).to eq(0)
		# let's land a plane at the airport
		airport.dock(plane)
		expect(airport.plane_count).to eq(1)
	end

	it "should allow a plane to take off" do
		# plane = Plane.new
		# airport = Airport.new
		# we need to call the method dock first 
		# (a plane has to have landed/docked at the airport before it can be released for take off)
		airport.dock(plane)
		# calling a new method release with the argument plane
		# allows the airport to allow a plane to take off
		airport.release(plane)
		# once the plane has taken off, assuming only one plane is docked, the airport will be empty
		expect(airport.plane_count).to eq(0)
	end
end