require 'cipher'

RSpec.describe "ciphertexts method" do
	it "passes" do
		result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
		expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
	end
	
	it "passes" do
		result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
		expect(result).to eq "theswiftfoxjumpedoverthelazydog"
	end
	
end
 