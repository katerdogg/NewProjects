# Practice Problems from Ruby Quizzes
# codequizzes.com


# Add "fun" to end of array
def funify(array)
	return(array.push("fun"))
end
puts funify(["this", "is"])

# Replace the 0th index with "FUN FUN"
def more_fun(array)
	array[0] = "FUN FUN"
	return array
end
puts more_fun(["this", "is"])

# Add 1 to number given
def increment_variable(variables)
	variables += 1
	return variables
end
puts increment_variable(7)

# Iterate over an array and add "McDonald" to each index
def iterate
	result = []
	first_names = ["Hamburglar", "Grimace", "Ron"]
	last_name = "McDonald"

	# puts first_names.each {|name| name + last_name}
	# puts first_names

	first_names.each do |first_name|
		result.push(first_name + " " + last_name)
	end
	puts result
end

# Add string to end of each index of an array 
def personality_arr
	personality_types = ["bad", "good", "great"]
	puts personality_types.map {|type| type + " " + "person"}
end

# Add each index of an array to form a full string
def concatenate
	polluted = ["waters", "too", "polluted", "with", "germs"]
	puts polluted.join(" ")
end

# Work with hashes! 
def return_values
	lebron = {:sport => "basketball", :birthplace => "Akron"}
	# Print a value of a key
	puts lebron[:sport]
	
	# Add a key=>value pair to the end of a hash
	lebron[:high_school] = "St. Vincent-St. Mary High School"
	puts "New hash:"
	puts lebron

	# Puts out each key in a hash
	puts "Keys: "
	puts lebron.keys()

	# Puts out each value in a hash
	puts "Values: "
	puts lebron.values()
end

# Add string to the beginning of each index of an array
def last_namesss
	last_names = ["D", "Krugman"]
	print last_names.map {|name| "Paul " + name}
end

# Return true if any string within an array starts with 'a'. 
# Return false otherwise
def soaps 
	soap_opera = ["all", "my", "children"]
	# counter = 0
	# if soap_opera[counter] == "a"
	# 	puts "true"
	# 	return true
	# else
	# 	puts "false"
	# 	return false
	# end
	# counter += 1
	puts soap_opera.any? do |word|
		word[0] == "a"
	end
end
# return true of every element starts with the letter 'r'
def ruby_tools
	tools = ["ruby", "rspec", "rails"]
	puts tools.all? do |tool|
		tool[0] == "r"
	end
end
ruby_tools()

