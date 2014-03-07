require_relative "../lib/weather"

describe Weather do
	
	it "should know if it's sunny" do
		weather = Weather.new
		expect(weather.sunny).to be_true
	end

	it "should know if it's stormy" do
		weather = Weather.new
		expect(weather.stormy).to be_true
	end	
end