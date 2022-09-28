# File: factorial.rb

def factorial(n)
	product = 1
	while n > 0
		product *= n # this line needed to be moved for the result to be correct
		binding.irb
		n -= 1

	end
	product
end

p factorial(5)