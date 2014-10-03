require 'train'

describe Train do

	let(:train) { Train.new }

	it "should have two coaches on initialization" do
		expect(train.coaches.count).to eq(2)
	end

end