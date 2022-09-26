# Given a text, the method will estimate the reading time, 
# assuming a reading speed of 200 words per minute.

def reading_time(text)
	words = text.split(" ")
	return (words.length / 200.to_f).ceil
end