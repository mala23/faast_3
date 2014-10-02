class Coach

	attr_reader :capacity, :passengers

	def initialize
		@capacity = 40
		@passengers = []
	end

	def board(passenger)
		@passengers << passenger
	end

	def alight(passenger)
		@passengers.delete(passenger)
	end

	def full?
		passengers.count == capacity
	end

end