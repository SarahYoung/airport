require_relative "../lib/airport"
require_relative "../lib/plane"

describe Airport do

	def fill_airport(airport)
		# creates a 'helper method' that sets the method fill_airport
		# to mean the airport is full when it has 10 planes (I think?)
		10.times { airport.dock(Plane.new) }
	end

	let (:plane) { Plane.new }
	# we've now cet a capacity limit on Airport
	let (:airport) { Airport.new(:capacity => 10) }
	
	it "should allow a plane to land" do
		# plane = Plane.new
		# airport = Airport.new
		# we expect the airport to have 0 planes
		expect(airport.plane_count).to eq(0)
		# let's land a plane at the airport
		airport.dock(plane)
		expect(airport.plane_count).to eq(1)
		expect(plane.flying?).to eq(false)
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

	it "should know when it has a full capacity" do
		# expect the airport to be empty at first
		expect(airport).not_to be_full
		# I think this initializes the airport to dock at most 10 planes
		# refactored the code (fill_airport)
		fill_airport airport
		# expect the airport to be full once it hits 10 planes
		expect(airport).to be_full
	end

	it "should not allow a plane to land if it's at full capacity" do
		fill_airport airport
		# this will expect that docking a plane at the airport won't raise an error (Boris Bikes tells me this)
		expect(lambda { airport.dock(plane) }).to raise_error(RuntimeError)
	end

end







