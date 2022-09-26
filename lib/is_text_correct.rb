def is_text_correct?(text)
	if text =~ /(^[A-Z]).*([!\.\?]$)/
		return true
	elsif text == nil
		fail "Argument cannot be nil"
	else
		return false
	end
end