def greeter(first_name, last_name)
	if (first_name == "Bob" && last_name == "Loblaw") || (first_name == "Michael" && last_name == "Bluth") || (first_name == "Jobe" && last_name == "Bluth")
		return "I love Arrested Development!"
	elsif (first_name == "Rob" && last_name == "Pike") || (first_name == "Linus" && last_name == "Torvalds")
		return "Will you look at the C source code for this with me?"
	else
		return "Well hello there."
	end

end

puts greeter("Linus","Torvalds")