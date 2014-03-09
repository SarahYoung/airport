class Airport
	
	def initialize
		# initializes @planes to equal an array
		@planes = []
	end
	
	def plane_count
		# the method plane_count counts the planes in the array
		@planes.count
	end

	def dock(plane)
		# puts the value/argument plane into the @planes array
		@planes << plane
	end

	def release(plane)
		# deletes (takes) a plane from the @planes array
		@planes.delete(plane)
	end
end