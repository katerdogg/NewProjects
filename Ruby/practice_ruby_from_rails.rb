# Exercises from 4.3.2 Blocks

# 1
def powers
	(0..16).map { |x| puts x ** 2 }
end

# powers()

# 2
def yeller(array)
	array.each { |x| puts x.upcase }
end

# yeller(['o', 'l', 'd']) 

# 3
def random_subdomain
	puts ('a'..'z').to_a.shuffle[0..7]
end
# random_subdomain()

# 4
def string_shuffle(s)
	puts s.split('').shuffle.join
end

# string_shuffle("foobar")

# Exercises from 4.3.3 Hashes & Symbols

# 1 

def english_to_spanish
	hash = { 'one' => 'uno', 'two' => 'dos', 'three' => 'tres' }

	hash.each { |key, value| puts "#{key} in Spanish is #{value}." }
end

# 2

def family
	person1 = { :first => "Alexander", :last => "Hamilton" }
	person2 = { :first => "John", :last => "Laurens" }
	person3 = { :first => "Hercules", :last=> "Mulligan" }

	params = { :father => person1, :mother => person2, :child => person3 }

	puts "father: " + params[:father].to_s
	puts "mother: " + params[:mother].to_s
	puts "child: " + params[:child].to_s

end

# 3

def person
	hash = { name: "Katie", email: "kt@gmail.com", 
		password: ('a'..'z').to_a.shuffle[0..15].join }

	puts hash
end

merge_hash = { 'a' => 100, 'b' => 200 }.merge({ 'b' => 300 })

puts merge_hash
