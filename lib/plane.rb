class Plane
	
	def initialize
		@flying = true
	end

	def flying?
		@flying
	end
	
	def can_fly
		@flying
	end

	def land
		@flying = false
	end

	def can_take_off
		@flying
	end

end
