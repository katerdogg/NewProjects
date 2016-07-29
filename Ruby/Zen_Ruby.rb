def simple_if_else_unless()
	# Simpler "If"

	puts "You are cute!" if true

	# Simpler Unless

	puts "You are cute!" unless false

	# Simpler "If/Else"

	puts 3 + 4 ? "this equals seven!" : "this does not equal seven!"
end

# Simpler Case Statement
def simple_case_statement()
	puts "What language would you like to say 'hello' in?"
	greeting = gets.chomp

	case greeting
		when "English" then puts "Hello!"
		when "French" then puts "Hello in French: Bonjour!"
		when "German" then puts "Hello in German: Guten Tag!"
		when "Finnish" then puts "Hello in Finnish: Haloo!"
		else puts "I don't know that language!"
	end
end

# Conditional Assignment Operators
def cond_assign_op()
	favorite_musical = nil
	puts favorite_musical

	favorite_musical ||= "Rent"
	puts favorite_musical

	favorite_musical ||= "Hamilton"
	puts favorite_musical

	favorite_musical = "Hamilton"
	puts favorite_musical
end

# Implicit Return
def multiple_of_three(n)
	% 3 == 0 ? "True" : "False"
end

def divisible_by_two()
	my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	my_array.each {|number| puts number if number % 2 == 0}

end

# Up the Down Staircase
def upto_downto
	"L".upto("P") { |letter| puts letter}
	95.upto(100) { |number| puts number}
	100.downto(95) { |number| puts number}
end 

def respond_to
	age = 26

	age.respond_to(:next)
end 




