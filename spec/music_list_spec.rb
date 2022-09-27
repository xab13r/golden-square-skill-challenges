require 'music_list'

# Set up RSpec tests
RSpec.describe MusicList do
	# Let's check if the class is available and can be constructed
	it "constructs" do
		music_list = MusicList.new
	end
	
	describe "#add" do
		it "can add one song to the songs list" do
			music_list = MusicList.new
			music_list.add("Song Title 1")
			expect(music_list.show).to eq ["Song Title 1"]
		end
		
		it "can add multiple songs to the songs list" do
			music_list = MusicList.new
			music_list.add("Song Title 1")
			music_list.add("Song Title 2")
			music_list.add("Song Title 3")
			expect(music_list.show).to eq ["Song Title 1", "Song Title 2", "Song Title 3"]
		end
		
		context "when passed an empty string" do
			it "fails" do
				music_list = MusicList.new
				expect { music_list.add("") }.to raise_error "Song title cannot be empty"
			end
		end
		
		context "when passed any variable type other than string" do
			it "fails" do
				music_list = MusicList.new
				expect { music_list.add([1,2,3,4]) }.to raise_error "Song title must be a string"
				expect { music_list.add({"title" => "new title"}) }.to raise_error "Song title must be a string"
				expect { music_list.add(1234) }.to raise_error "Song title must be a string"
			end
		end
		
		context "when passed a string of whitespaces" do
			it "fails" do
				music_list = MusicList.new
				expect { music_list.add("         ") }.to raise_error "Song title cannot be blank"
			end
		end
	end
end