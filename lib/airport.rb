class Airport
	
	DEFAULT_CAPACITY = 5

	def initialize(options = {})
		# initializes the capacity from the airport_spec
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		# initializes @planes to equal an array
		@planes = []
	end
	
	def plane_count
		# the method plane_count counts the planes in the array
		@planes.count
	end

	def dock(plane)
		# this raises an error if the airport count is at capacity
		raise "Airport is full" if full?
		# puts the value/argument plane into the @planes array
		@planes << plane
	end

	def release(plane)
		# deletes (takes) a plane from the @planes array
		@planes.delete(plane)
	end

	def full?
		# defines the method full to be when the plane_count is
		# equal to the max capacity (initialized in ln 7 from airport_spec)
		plane_count == @capacity
	end

end