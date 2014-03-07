require_relative "../lib/plane"

describe Plane do 

	it "should be able to fly" do
		plane = Plane.new
		expect(plane.fly?).to be_true
	end

end
