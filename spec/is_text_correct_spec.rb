# Give a block of text. the method checks if the text starts 
# with a capital letter and ends with punctuation mark from 
# the group !?.;

require "is_text_correct"

RSpec.describe "is_text_correct? method" do
	context "when passed an empty string" do
		it "return false" do
			expect(is_text_correct?("")).to eq false	
		end
	end
	
	context "when passed a \"Hello, world!\"" do
		it "returns true" do
			result = is_text_correct?("Hello, world!")
			expect(result).to eq true	
		end
	end
	
	context "when passed a \"hello, world!\"" do
		it "returns false" do
			result = is_text_correct?("hello, world!")
			expect(result).to eq false
		end
	end
	
	context "when passed a \"Hello, world.\"" do
		it "returns true" do
			result = is_text_correct?("Hello, world.")
			expect(result).to eq true
		end
	end
	
	context "when passed a \"Hello, world,\"" do
		it "returns false" do
			result = is_text_correct?("Hello, world,")
			expect(result).to eq false
		end
	end
	
	context "when passed a \"hello, world\"" do
		it "returns false" do
			result = is_text_correct?("hello, world")
			expect(result).to eq false
		end
	end
	
	context "when passed nil" do
		it "fails" do
			expect { is_text_correct?(nil) }.to raise_error "Argument cannot be nil"
		end
	end
	

end



#is_text_correct?("Hello, world!") => true
#is_text_correct?("") => false
#is_text_correct?("Hello, world,") false
#it_text_correct?("hello, world") false