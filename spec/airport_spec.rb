describe Airport do
	it "should allow a plane to land" do
	plane = Plane.new
	airport = Airport.new
	# we expect the airport to have 0 planes
	expect(airport.plane_count).to eq(0)
	# let's land a plan into the station
end