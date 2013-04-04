def factorial(input_num)
	i = 1
	if input_num == 0
		return 1
	else (1..input_num).each { |element| i*= element }
	end
	return i
end

number = 5
puts factorial(number)