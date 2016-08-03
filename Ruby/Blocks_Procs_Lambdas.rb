# Blocks using .times
5.times do puts "I'm a block!"
end

# Collect Method
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect { |nums| nums * 2 }
puts doubled_fibs

# yield Method

def yield_name(name)
	puts "In the method! Let's yield."
	yield("Oliver")
	puts "In between the yields!"
	yield(name)
	puts "Block complete!"
end

# yield_name("Eric") { |name| puts "My name is #{name}!"}

def double(n)
	yield(n)
end

# double(7) { |number| number * 2}

# Procs 
def floats
	floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
	round_down = Proc.new {|x| x.floor}
	ints = floats.collect(&round_down)
	puts ints
end

def proc_one
	hi = Proc.new {puts "Hello!"}
	hi.call
end

def numbers_to_str
	num_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	puts "numbers: "
	print num_arr
	puts " "
	str_arr = num_arr.map(&:to_s)
	puts "strings: "
	print str_arr
	puts " "
end

def lambda_syntax
	strings = ["Hercules", "Lafayette", "Alexander", "Eliza", 
		"Washington", "Laurens"]
	symbolize = lambda {|str| str.to_sym}
	symbols = strings.collect(&symbolize)
	print symbols
end

def is_it_a_sym
	my_array = ["Lin", :Phillipa, "Christopher", :Leslie]
	symbol_filter = lambda { |ifsym| ifsym.is_a? Symbol}
	symbols = my_array.select(&symbol_filter)
	puts symbols
end

# Review Code of Blocks, Procs, and Lambdas

def find_ints
	odds_n_ends = [:Alabama, "Arkansas", 2, true, "I do love my ma and pa"]
	# Integer can be changed to String or Symbol
	ints = odds_n_ends.select { |nums| nums.is_a? Integer}
	puts "Integers: "
	puts ints
end

def under_100
	ages = [23, 101, 112, 12, 21, 51, 33, 25, 16, 102]

	under_100 = Proc.new {|x| x < 100}
	youngsters = ages.select(&under_100)
	puts "Ages under 100: "
	puts youngsters
end

def vals_under_d
	comrades = {
		immigrant: "Alexander Hamilton",
		abolitionist: "John Laurens",
		orphan: "Aaron Burr", 
		tailor: "Hercules Mulligan",
		favorite_fighting_frenchman: "Lafayette",	
		best_of_wives: "Elizabeth Schuyler"
	}

	first_half = lambda {|key, value| value < "D"}
	
	a_to_d = comrades.select(&first_half)
	puts "comrades A - D: "
	puts a_to_d
end
vals_under_d()
