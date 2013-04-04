def leap_year?(year)
	if year%4 != 0 #if not divisible by 4, then it's false.
		return false
	elsif year%100 == 0 #first exception, if it's divisible by 100
		if year%400 == 0 # if it's divisible by 400 true
			return true
		end
		return false # if not divisible by 400, but divisible by 100, flase
	else
		return true # if not the loop falls here, it's divisible by 4, it's true
	end
end

puts leap_year?(2012)