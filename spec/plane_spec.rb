require_relative "../lib/plane"

describe Plane do 

	it "should be able to fly" do
		plane = Plane.new
		expect(plane.fly?).to be_true
	end

	it "should be able to land" do
		plane = Plane.new
		expect(plane.can_land?).to be_true
	end

	it "should be able to take off" do
		plane = Plane.new
		expect(plane.can_take_off?).to be_true
	end

end
