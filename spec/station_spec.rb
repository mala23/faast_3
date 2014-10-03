require 'station'

describe Station do

	let(:station) { Station.new }
	let(:passenger) { Passenger.new}
	let(:train) { double :train }

	it "should be able to hold passengers" do
		expect(station.trains).to eq([])
	end

	it "should be able to accept passengers" do
		station.accept(passenger)
		expect(station.passengers.count).to eq(1)
	end

	it "should be able to release passengers" do
		station.accept(passenger)
		expect(station.passengers.count).to eq(1)
		station.release(passenger)
		expect(station.passengers.count).to eq(0)
	end

	it "should be able to hold trains" do
		expect(station.trains).to eq([])
	end

	it "should be able to let trains arrive" do
		allow(station).to receive(:let_arrive).with(train).and_return(train)
		station.let_arrive(train)
	end

	it "should be able to let trains depart" do
		allow(station).to receive(:let_depart).with(train).and_return(train)
		station.let_depart(train)
	end

end