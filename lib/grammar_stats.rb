class GrammarStats
	def initialize
		# Set up a variable to keep track of percentage
		@text_checked = 0
		@text_passing = 0
	end
	
	def check(text) # text is a string
		# Returns true or false depending on wether the text begins
		# with a capital letter and ends with a sentence-ending 
		# punctuation mark.
		
		fail "Text must be a string" unless text.class == String
		fail "Please add some text" if text == ""
		@text_checked += 1
		if text =~ /(^[A-Z]).*([!\.\?]$)/
			@text_passing += 1
			return true
		else
			return false
		end
	end
	
	def percentage_good
		# Returns as an integer the percentage of texts checked so far
		# that passed the check defined in the `check` method.
		# The number represents 55%.
		
		fail "Please check some text before" unless @text_checked > 0
		return (@text_passing / @text_checked.to_f).round(2) * 100
	end
end