def count_words(string)
	string_clean = string.downcase.gsub(/[^a-z0-9\s]/i, '')
	return string_clean.split().count
end