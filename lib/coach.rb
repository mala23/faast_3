class Coach

	attr_reader :capacity, :passengers

	def initialize
		@capacity = 40
		@passengers = []
	end

	def board(passenger)
		raise "I'm full buddy" if full?
		@passengers << passenger
	end

	def alight(passenger)
		@passengers.delete(passenger)
	end

	def full?
		passengers.count == capacity
	end

end