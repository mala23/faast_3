require_relative 'coach'

class Train

	attr_accessor :coaches

	def initialize
		@coaches = [coach01 = Coach.new, coach02 = Coach.new]
	end

end