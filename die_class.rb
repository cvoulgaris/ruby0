class Die
	attr_accessor :sides
	def initialize(sides)
		@sides = sides
	end

	def roll
		rand(sides).ceil
	end
end
