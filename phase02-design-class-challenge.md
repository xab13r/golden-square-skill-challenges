# Class Design

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.

## The Problem

Implement a class that will allow the user to:
- add songs to a list
- see a list of songs

## The Class Signature

```
class MusicList
	
	def initialize()
	# it only needs an array to store song titles
	end
	
	def add(song) # song is a string
		# Return error if song is an empty string
	end
	
	def show
		# Returns a list of songs
	end
	
end
```

## Tests

```
#1 - can add one song
music_list = MusicList.new
music_list.add("Song Title 1")
music_list.show => ["Song Title 1"]

#2 - can add multiple songs
music_list = MusicList.new
music_list.add("Song Title 1")
music_list.add("Song Title 2")
music_list.add("Song Title 3")
music_list.show => ["Song Title 1", "Song Title 2", "Song Title 3"]

#3 - doesn't accept an empty string
music_list = MusicList.new
music_list.add("") => throws an error

#4 - doesn't accept any variable type other than string
music_list = MusicList.new
music_list.add([1,2,3,4] => throws an error
music_list.add({"title" => "new title"}) => throws an error
music_list.add(1234) => throws an error

#5 - doesn't accept a string of whitespaces (regex: /^\s.*$/)
music_list = MusicList.new
music_list.add("       ") => "Song title cannot be blank"

```