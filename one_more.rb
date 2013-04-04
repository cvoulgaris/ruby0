def one_more(input_array)
	last_element = input_array.last
	input_array << last_element
end

array = [1,2,3,4,5]
puts one_more(array)