require './lib/coach.rb'

describe Coach do

	let(:coach) { coach = Coach.new }
	let(:passenger) { double :passenger }
	
	it "should be able to hold 40 passengers" do
		expect(coach.capacity).to eq(40)
	end

	it "be initialized with an empty passengers array" do
		expect(coach.passengers).to eq([])
	end

	it "should be able to board passengers" do
		coach.board(passenger)
		expect(coach.passengers.count).to eq(1)
	end

	it "should be able to alight" do
		coach.board(passenger)
		expect(coach.passengers.count).to eq(1)
		coach.alight(passenger)
		expect(coach.passengers.count).to eq(0)
	end

	it "the coach should know when it's full" do
		40.times{ coach.board(passenger) }
		expect(coach.passengers.count).to eq(40)
		expect(coach.full?).to be true
	end

	it "should be able to reject passengers when it's full" do
		40.times{ coach.board(passenger) }
		expect{coach.board(passenger).to raise_error(RunTimeError)}
	end

end