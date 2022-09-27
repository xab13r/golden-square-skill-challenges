require 'say_hello'

RSpec.describe "say_hello method" do
	it "returns say_hello(\"kay\") => \"hello kay\"" do
		result = say_hello('kay')
		expect(result).to eq "hello kay"
	end
end
 