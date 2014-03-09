require_relative "../lib/plane"

describe Plane do
	let(:plane) { Plane.new }

	it "should be able to fly" do
		expect(plane.can_fly).to eq(true)
	end

	it "should be able to land" do
		plane.land
		expect(plane.can_fly).to eq(false)
	end

	it "should be able to take off" do
		plane.can_take_off
		expect(plane.can_fly).to eq(true)
	end
end
































