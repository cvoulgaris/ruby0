def add(n1,n2)
	@n1 = n1
	@n2 = n2
	operator = "sum"
	result = n1 + n2
	output(result,operator)
end

def subtract(n1,n2)
	@n1 = n1
	@n2 = n2
	operator = "difference"
	result = n1 - n2
	output(result,operator)
end

def multiply(n1,n2)
	@n1 = n1
	@n2 = n2
	operator = "product"
	result = n1 * n2
	output(result,operator)
end

def divide(n1,n2)
	@n1 = n1
	@n2 = n2
	operator = "division"
	result = n1.to_f / n2
	output(result,operator)
end

def output(result,operator)
	return "The #{operator} of #{@n1} and #{@n2} is #{result}."
end

puts add(2,3) 
puts subtract(2,3)
puts multiply(2,3)
puts divide(2,3)
