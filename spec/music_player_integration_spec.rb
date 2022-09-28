require 'music_library'
require 'track'

# Tests for multiple class together are called INTEGRATIONS

# Based on music_library.rb and track.rb
# here is a list of examples
#
# 1 - gets all tracks
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.all # => [track_1, track_2]

# 2 - searches by keyword
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.search_by_title("Carte") # => [track_1]

# 3 - searches by substring too
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.search_by_title("aes") # => [track_2]

# 4 - if no results, search yields empty list
# library = MusicLibrary.new
# track_1 = Track.new("Carte Blanche", "Veracocha")
# track_2 = Track.new("Synaesthesia", "The Thrillseekers")
# library.add(track_1)
# library.add(track_2)
# library.search_by_title("zzz") # => []

# 5 - formats individual tracks
# track = Track.new("Carte Blanche", "Veracocha")
# track.format # => "Carte Blanche by Veracocha"

RSpec.describe "Music Player Integration" do
	context "when we add a track to the library" do
		it "comes back in the list" do
			music_library = MusicLibrary.new
			track_1 = Track.new("my_title_1", "my_artist_1")
			track_2 = Track.new("my_title_2", "my_artist_2")
			music_library.add(track_1)
			music_library.add(track_2)
			expect(music_library.all).to eq [track_1, track_2]
		end
	end

	context "with some tracks added" do
		it "searches for those tracks by full title" do
			music_library = MusicLibrary.new
			track_1 = Track.new("my_title_1", "my_artist_1")
			track_2 = Track.new("my_title_2", "my_artist_2")
			music_library.add(track_1)
			music_library.add(track_2)
			result = music_library.search_by_title("my_title_2")
			expect(result).to eq [track_2]
		end
	end

	context "with some tracks added" do
		it "searches for a substring" do
			music_library = MusicLibrary.new
			track_1 = Track.new("my_title_1", "my_artist_1")
			track_2 = Track.new("my_title_2", "my_artist_2")
			music_library.add(track_1)
			music_library.add(track_2)
			result = music_library.search_by_title("title_2")
			expect(result).to eq [track_2]
		end
	end

	context "when there are no tracks matching" do
		it "yields an empty list when searching" do
			music_library = MusicLibrary.new
			track_1 = Track.new("my_title_1", "my_artist_1")
			music_library.add(track_1)
			result = music_library.search_by_title("title_2")
			expect(result).to eq []
		end
	end

end