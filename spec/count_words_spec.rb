require "count_words"

# A method called count_words that takes a string as an 
# argument and returns the number of words in that string.

RSpec.describe "count_words method" do
	context "when passed an empty string" do
		it "returns 0" do
			result = count_words("")
			expect(result).to eq 0
		end
	end
	
	context "when passed a string of 4 words" do
		it "returns 4" do
			result = count_words("one two three four")
			expect(result).to eq 4
		end
	end
	
	context "when passed a string of 10 words" do
		it "returns 10" do
			result = count_words("one two three four five six seven eight nine ten")
			expect(result).to eq 10
		end
	end
	
	context "when passed a string of 10 words containing punctuation" do
		it "removes punctuation and returns 10" do
			result = count_words("one, two. three- four: five six! seven? eight-- nine_ ten")
			expect(result).to eq 10
		end
	end
end