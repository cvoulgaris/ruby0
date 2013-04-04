def title_case(input_string)
	temp_array = input_string.split
	new_array = []
	temp_array.each do |element| 
		new_array << element.capitalize
	end
	return new_array.join(" ")
end

puts title_case("Estamos todos juntos de vacaciones en Gatlinburg!")