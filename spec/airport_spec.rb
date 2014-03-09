require_relative "../lib/airport"
require_relative "../lib/plane"

describe Airport do
	it "should allow a plane to land" do
		plane = Plane.new
		airport = Airport.new
		# we expect the airport to have 0 planes
		expect(airport.plane_count).to eq(0)
		# let's land a plane at the airport
		airport.dock(plane)
		expect(airport.plane_count).to eq(1)
	end
end