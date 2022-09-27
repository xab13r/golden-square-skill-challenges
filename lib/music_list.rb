class MusicList
	
	def initialize
		@list_of_songs = Array.new	
	end

	def add(song_title)
		fail "Song title cannot be empty" unless song_title != ''
		fail "Song title must be a string" unless song_title.class == String
		if song_title =~ /^\s.*$/
			fail "Song title cannot be blank"
		else
			@list_of_songs.push(song_title)
		end
	end
	
	def show
		return @list_of_songs
	end
	
end