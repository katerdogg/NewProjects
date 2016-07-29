# Becoming More Selective

musicals = {
	rent: 5,
	frozen: 4,
	hamilton: 5,
	west_side_story: 2
}

# good_musicals = musicals.select {|story, rating| puts rating > 4}
musicals.each_key {|key| puts key, " "}