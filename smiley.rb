def smiley(input_hash)
	if input_hash["mood"] == "happy"
		return ":)"
	elsif input_hash["mood"] == "sad"
		return ":("
	else
		return ":|"
	end
end

hash_prueba = {"mood" => "happy", "health" => "excellent"}
puts smiley(hash_prueba)