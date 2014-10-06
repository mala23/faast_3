require './lib/passenger.rb'
require './lib/coach.rb'

describe Passenger do

	let(:passenger) { Passenger.new }
	let(:coach) 	{ double :coach }
	let(:station)	{ double :station }

	it "should be able to enter a coach" do
		expect(coach).to receive(:board).with(passenger)
		passenger.get_on(coach)
	end

	it "should be able to leave coach" do
		expect(coach).to receive(:alight).with(passenger)
		passenger.get_off(coach)
	end

	it "should be able to touch in at a station" do
		expect(station).to receive(:accept).with(passenger)
		passenger.touch_in(station)
	end

	it "should be able to touch out at a station" do
		expect(station).to receive(:release).with(passenger)
		passenger.touch_out(station)
	end

end