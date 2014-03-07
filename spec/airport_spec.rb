require_relative "../lib/airport"

describe Airport do

	let(:airport) { Airport.new }

	it "should be able to clear planes for landing" do
		expect(airport.clear_landing).to be_true
	end

	it "should be able to clear planes for take-off" do
		expect(airport.clear_take_off).to be_true
	end
end