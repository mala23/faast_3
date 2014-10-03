class Station

	attr_accessor :passengers, :trains

	def initialize
		@passengers = []
		@trains = []
	end

	def accept(passenger)
		@passengers << passenger
	end

	def release(passenger)
		@passengers.delete(passenger)
	end

	def let_arrive(train)
		@trains <<  train
	end

	def let_depart(train)
		@trains.delete(train)
	end

end