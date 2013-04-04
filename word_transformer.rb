def echo(input_string)
	return_string = input_string + " " + input_string
end

def shout(input_string)
	input_string.upcase
end

def reverse(input_string)
	input_string.reverse
end

puts echo("verga")
puts shout("verga")
puts reverse("verga")