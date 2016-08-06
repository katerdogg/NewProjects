# Public and Private Methods

class Dog
	def initialize(name, breed)
		@name = name
		@breed = breed
	end

	public
	def bark
		puts "Woof!"
	end

	private
	def id
		@id_number = 12345
	end

end

# Attr_reader and Attr_writer

class Person
	attr_reader :name
	attr_writer :job

	def initialize(name, job)
		@name = name
		@job = job
	end
end

# Modules and Constants

module MyLibrary
	FAVE_BOOK = "Harry Potter"
end

# Require
def require
	puts Math::PI 
	require "date"
	puts Date.today

end