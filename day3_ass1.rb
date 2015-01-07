#game picks rando num
#game asks for guess
#if guess is high, tell user higher and guess again and vice versa
#5 guesses
# tell them right or too many guesses

random_number = 50 #rand(1...100).to_i
# puts "What's your number guess between 1 & 100?  Only use integers (no decimals!)"
# user_number = gets.chomp.to_i
guess_number = 0
game_on = true

def number_game random_number, game_on
		puts "What's your guess?"
		user_number = gets.chomp.to_i
		if random_number > user_number
			puts "I'm thinking of a higher number.  Try again."
			# user_number = gets.chomp.to_i
		elsif random_number < user_number
			puts "I'm thinking of a lower number.  Try again."
			# user_number = gets.chomp.to_i
		elsif random_number == user_number
			puts "you got it"
			#puts "Awesome Job!  You guessed correct!"
			# p game_on
			game_on = false
			# p game_on
		end
end

while guess_number <5 && game_on == true
	number_game(random_number, game_on)
	guess_number +=1
	puts guess_number
	# puts game_on.to_s
end

if guess_number >= 5
	puts "You used too many guesses!"
else
	puts "good job"
end
