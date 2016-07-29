movies = {
	forest_gump: 5,
	twelfth_night: 5,
	much_ado_about_nothing: 4,
	rent: 5,
	dallas_buyers_club: 3,
	the_lobster: 1
}

puts "Would you like to [add] a movie, 
[update] a movie, 
[display] a movie, or 
[delete] a movie?"
choice = gets.chomp

case choice
when "add"
	puts "What movie title would you like to add?"
	title = gets.chomp
	
	if movies[title.to_sym].nil?
		puts "What rating would you give this title?"
		rating = gets.chomp
		movies[title.to_sym] = rating.to_i
	else
		puts "This movie already exists in the library!"
	end

when "update"
	puts "What movie would you like to update?"
	title = gets.chomp
	if movies[title.to_sym].nil?
		puts "This movies does not exist in the library!"
	else
		puts "What rating would you like to give this title?"
		rating = gets.chomp
		movies[title.to_sym] = rating.to_i
		puts movies
	end
when "display"
	movies.each {|movie, rating| puts "Movie: #{movie} Rating: #{rating}"}
when "delete"
	puts "What movie would you like to delete?"
	title = gets.chomp
	if movies[title.to_sym] != nil
		movies.delete(title.to_sym)
		puts "Your movie has been deleted!"
		puts movies
	else
		puts "This movie does not exist in the library!"
	end
else
	puts "Error!"
end