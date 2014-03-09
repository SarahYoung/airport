# link to the Plane class
require_relative "../lib/plane"
# we're describing the functionality of the class Plane
describe Plane do
	# this is a specific feature
	# that we expect to be present
	it "should not be flying after we create it" do
		plane = Plane.new # initalizing a new object of plane class	
		# expect an instance of this class to have
		# a method "flying?" that should return false
		expect(plane).not_to(be_flying)
	end

	it "should fly after we create it" do
		# creating a new instance of plane
		plane = Plane.new
		# calling the method can_fly on the instance plane
		plane.can_fly
		# expecting the method flying? to return true
		expect(plane).to(be_flying)
	end

	it "should be able to land" do
		# creating a new instance of plane
		plane = Plane.new
		# calling the method can_land on this instance 
		plane.can_land
		# expecting the method flying? to be false
		expect(plane).not_to(be_flying) 
	end
end