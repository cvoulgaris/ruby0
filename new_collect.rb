class Array
 def new_collect
 	new_array = []
 	0.upto(self.length - 1) do |index|
 		new_array[index] = yield(self[index])
 	end
 	return new_array
 end
end

my_array = ["Augusto", "Santiago", "Victoria", "Natalia", "Constantino"]
puts "the original array is: "
puts my_array.inspect

my_new_array = my_array.new_collect do |element| 
	"I love " + element + "." 
end

puts "the new array is: "
puts my_new_array.inspect

