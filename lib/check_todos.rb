# check_todos(text)
# takes a block of text (string)
# return true if the text contains "#TODO#

# Tests Required
# - [X] Check if the methods exists
# - [X] Check the methods accepts one argument
# - [X] Check the method returns false for an empty string
# - [X] Check the method returns false if the text does not contain "#TODO" 
# - [X] Check the method returns true if the text contains "#TODO"
# - [X] Check if the argument is a string

# This can be refactored and made simpler
# def check_todos(text)
#
# 	if text.class == Array
# 		fail "Argument must be a string"
# 	elsif text.class == Fixnum
# 		fail "Argument must be a string"
# 	elsif text.class == Hash
# 		fail "Argument must be a string"
# 	end
# 	
# 	if text.include?("#TODO")
# 		return true
# 	else
# 		return false
# 	end
# end

def check_todos(text)
	if text.class != String
		fail "Argument must be a string"
	else
		return text.include?("#TODO")
	end
end