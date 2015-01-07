random_number = rand(1...100).to_i
guess_number = 0
@game_on = true

puts "Guess an integer between 1 & 100:"
def number_game random_number
		puts "What's your guess?"
		user_number = gets.chomp.to_i
		if random_number > user_number
			puts "I'm thinking of a higher number."
		elsif random_number < user_number
			puts "I'm thinking of a lower number."
		elsif random_number == user_number
			puts "you got it"
			@game_on = false
		end
end

while guess_number <5 && @game_on
	number_game(random_number)
	guess_number +=1
end

if guess_number >= 5
	puts "You used too many guesses!  The correct number was #{random_number}."
else
	puts "good job.  You guessed the correct number in #{guess_number} tries."
end











