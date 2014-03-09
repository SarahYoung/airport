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
end