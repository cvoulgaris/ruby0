class Person
	def initialize
		@firstname = Faker::Name.first_name
		@lastname = Faker::Name.last_name
		@phonenumber = Faker::PhoneNumber.phone_number
		@wk_add_street_number = Faker::Address.street_address
		@wk_add_street_number = Faker::Address.street_address
		@wk_add_street_number = Faker::Address.street_address
		@wk_add_street_number = Faker::Address.street_address
		@wk_add_street_number = Faker::Address.street_address
		@bio = Faker::Lorem.paragraphs(paragraph_count = 3)
		@email = Faker::Internet.email
	end

	def about_me

	end
end
