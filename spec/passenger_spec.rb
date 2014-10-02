require './lib/passenger.rb'
require './lib/coach.rb'

describe Passenger do

	let(:passenger) { Passenger.new }
	let(:coach) { Coach.new }
	let(:station) { double :station }

	it "should be able to enter a coach" do
		passenger.get_on(coach)
		expect(coach.passengers.count).to eq(1)
	end

	it "should be able to leave coach" do
		passenger.get_on(coach)
		passenger.get_off(coach)
		expect(coach.passengers.count).to eq(0)
	end

	it "should be able to touch in at a station" do
		allow(station).to receive(:accept).with(passenger).and_return(passenger)
		passenger.touch_in(station)
		# expect { passenger.touch_in }
  #   	}.to change{ station.passengers.count }.from(0).to(1)
	end

	it "should be able to touch out at a station" do
		allow(station).to receive(:release).with(passenger).and_return(passenger)
		passenger.touch_out(station)
	end

end