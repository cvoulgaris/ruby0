require 'Faker'

class Person
	def initialize
		@firstname = Faker::Name.first_name
		@lastname = Faker::Name.last_name
		@phonenumber = Faker::PhoneNumber.phone_number
		@wk_add_street = Faker::Address.street_address(include_secondary=true)
		@wk_add_city = Faker::Address.city
		@wk_add_state_abbr = Faker::Address.state_abbr
		@wk_add_zip_code = Faker::Address.zip_code
		@bio = Faker::Lorem.paragraphs(paragraph_count = 1)
		@email = Faker::Internet.email
	end

	def about_me
		puts "Hello, my name is #{@firstname} #{@lastname}."
		puts "A little about me: #{@bio[0]..@bio[@bio.length-1]}."
		puts "You can reach me at:\nPhone: #{@phonenumber}\nEmail: #{@email}\nWork: #{@wk_add_street}, #{@wk_add_city}, #{@wk_add_state_abbr}, #{@wk_add_zip_code}"
	end
end

person = Person.new
person.about_me
