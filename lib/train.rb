require_relative 'coach'

class Train

	attr_accessor :coaches

	def initialize
		@coach01 = Coach.new
		@coach02 = Coach.new
		@coaches = [coach01, coach02]
	end

end