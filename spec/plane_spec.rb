require_relative "../lib/plane"

describe Plane do 

	let (:plane) { Plane.new } 

	# it "should be able to fly" do
	# 	expect(plane.fly?).to be_true
	# end

	it "should be able to land" do
		expect(plane.can_land?).to be_true
	end

	it "should be able to take off" do
		expect(plane.can_take_off?).to be_true
	end

end
