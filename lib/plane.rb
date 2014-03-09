class Plane
	
	# the initialize method is always called when I create a 
	# new plane class by typing Plane.new
	def initialize
		@able_to_fly = false
		# we've initialized the plane to automatically not be able to fly
	end
	# all instance variables begin with @
	# this must be an instance variable b/c 
	# we'll need it in other variables
	def able_to_fly?
		@able_to_fly
		# defining/setting the method able_to_fly as false (i.e, can't fly)
	end

	def can_fly
		@able_to_fly = true
		# setting the method can_fly to be true (i.e, the plane can fly)
	end
end