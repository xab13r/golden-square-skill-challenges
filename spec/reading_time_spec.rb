# Given a text, the method will estimate the reading time, 
# assuming a reading speed of 200 words per minute.

require 'reading_time'

RSpec.describe "reading_time method" do
	context "when passed an empty string" do
		it "returns 0" do
			reading_time = reading_time("")
			expect(reading_time).to eq 0
		end
	end
	
	context "when passed a text of 200 words" do
		it "returns a duration of 1 minute" do
			reading_time = reading_time("one " * 200 )
			expect(reading_time).to eq 1
		end
	end
	
	context "when passed a text of 400 words" do
		it "returns a duration of 2 minutes" do
			reading_time = reading_time("one " * 400)
			expect(reading_time).to eq 2
		end
	end
	
	context "when passed a text of 150 words" do
		it "returns 1" do
			reading_time = reading_time("one " * 150)
			expect(reading_time).to eq 1
		end
	end
	
	context "when passed a text of 25000 words" do
		it "returns 25" do
			reading_time = reading_time("one " * 25000)
			expect(reading_time).to eq 125
		end
	end
end