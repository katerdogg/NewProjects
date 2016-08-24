class User
	attr_accessor :name, :email

	def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end

	def full_name
		puts "#{@name}".split(' ')
	end

	def alphabetical_name
		"#{@name}".split(', ')
	end
end
