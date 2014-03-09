class Plane
	
	# the initialize method is always called when I create a 
	# new plane class by typing Plane.new
	def initialize
		@flying = false
		# we've initialized the plane to automatically not be flying
	end
	# all instance variables begin with @
	# this must be an instance variable b/c 
	# we'll need it in other variables
	def flying?
		@flying
		# defining/setting the method able_to_fly as false (i.e, can't fly), see line 6
	end

	def can_fly
		@flying = true
		# setting the method can_fly to be true (i.e, the plane can fly)
	end

	def can_land
		@flying =false
		# value returns false (which is what we expect)
		# b/c we've set @flying to false, and if the plane has landed it shouldn't be flying
	end
end