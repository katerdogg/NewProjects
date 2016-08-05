# Object Oriented Programming I

class Person
	def initialize(name)
		@name = name
	end
end
matz = Person.new("Yukihiro")

# Learning Inheritance Syntax

class Application
	def initialize(name)
		@name = name
	end
end
# NewClass < InheritedFrom
class MyApp < Application
end

# Learning more about Classes, inheritance, and parent classes

class Creature
	def initialize(name)
		@name = name
	end

	def fight
		return "Punch to the chops!"
	end
end

class Dragon < Creature
	def fight
		# Used to be:
		# return "Breathes fire!"
		puts "Instead of breathing fire..."
		super
	end
end

# Code Written from scratch

class Message
	@@messages_sent = 0
	def initialize(from, to)
		@from = from
		@to = to

		@@messages_sent += 1
	end
end

my_message = Message.new("Katie", "Chelsea")

class Email < Message
	def initialize(from, to)
		super
	end
end
