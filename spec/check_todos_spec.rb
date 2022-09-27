require 'check_todos'

# Set up RSpec tests
RSpec.describe "check_todos method" do
	# Check if the methods exists
	it "checks method exists" do
		# Add an argument as required
		result = check_todos("this is an argument")
	end
	
	# Check the methods accepts one argument
	it "checks method accepts one argument" do
		result = check_todos("this is an argument")
	end
	
	# Check the method returns false for an empty string
	context "when passed an empty string" do
		it "returns false" do
			result = check_todos("")
			expect(result).to eq false
		end
	end
	
	# Check the method returns false if the text does not contain "#TODO"
	context "when passed a string not containing \"#TODO\"" do
		it "returns false" do
			result = check_todos("Nothing new to do here")
			expect(result).to eq false
		end
	end
	
	# Check the method returns true if the text contains "#TODO"
	context "when passed a string containing \"#TODO\"" do
		it "returns true" do
			result = check_todos("#TODO this is something to do")
			expect(result).to eq true
		end
	end
	
	# Check the argument is not an array
	context "when passed an array" do
		it "fails" do
			expect { check_todos([1,2,"array"]) }.to raise_error "Argument must be a string"
		end
	end
	
	# Check the argument is not a number
	context "when passed a number" do
		it "fails" do
			expect { check_todos(12345) }.to raise_error "Argument must be a string"
		end
	end
	
	# Check the argument is not a hash
	context "when passed a hash" do
		it "fails" do
			expect { check_todos({"todo" => "new to do"}) }.to raise_error "Argument must be a string"
		end
	end
	
end