def add(n1,n2)
	@num1 = n1
	@num2 = n2
	operator = "sum"
	result = n1 + n2
	output(operator,result)
end

def subtract(n1,n2)
	@num1 = n1
	@num2 = n2
	operator = "difference"
	result = n1 - n2
	output(operator,result)
end

def multiply(n1,n2)
	@num1 = n1
	@num2 = n2
	operator = "product"
	result = n1 * n2
	output(operator,result)
end

def divide(n1,n2)
	@num1 = n1
	@num2 = n2
	operator = "quotient"
	result = n1 / n2
	output(operator,result)
end

def output(operator, result)
	return "The #{operator} of #{@num1} and #{@num2} is #{result}."
end

puts add(2,3) 
puts subtract(2,3)
puts multiply(2,3)
puts divide(2,3)
