require_relative 'coach'

class Passenger

	def get_on(coach)
		coach.board(self)
	end

	def get_off(coach)
		coach.alight(self)
	end

	def touch_in(station)
		station.accept(self)
	end

	def touch_out(station)
		station.release(self)
	end

end