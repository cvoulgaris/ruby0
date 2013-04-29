
def fizzbuzz(num)
	div_by_3 = "Fizz"
	div_by_5 = "Buzz"

	if num%3 == 0 && num%5 == 0
		return div_by_3+div_by_5
	elsif num%3 == 0
		return div_by_3
	elsif num%5 == 0
		return div_by_5
	else
		return num.to_s
	end
end


a = gets.to_i
puts fizzbuzz(a)