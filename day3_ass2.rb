# user picks the number between 1 & 100
# computer guesses number
# tell the comp higher or lower or right

puts "Enter an integer between 1 to 100"
user_number = gets.chomp.to_i 
computer_guess = rand(1...100).to_i
guess_number = 0
low_num = 1
high_num = 100
@game_on = true

def computer_number_game user_number, computer_guess
	puts computer_guess
	if computer_guess == user_number
		puts "Good job! You guessed right!"
		@game_on = false
	elsif computer_guess > user_number
		puts "dumb computer!  you guessed too high!"
	elsif computer_guess < user_number
		puts "dumb computer!  you guessed too low!"
	end
end


while guess_number <10 && @game_on
	computer_number_game(user_number, computer_guess)
	guess_number += 1
if computer_guess > user_number
	high_num = computer_guess -1  
elsif computer_guess < user_number
	low_num = computer_guess +1
end
puts "low_num is #{low_num}"
puts "high_num is #{high_num}"
if high_num == low_num
	computer_guess = high_num
else
	computer_guess = rand(low_num...high_num)
end
end

if guess_number >= 10
	puts "Computer you took way too many tries!  The correct answer was #{user_number}"
	else
	puts "Great job Computer!  You guessed the right answer in #{guess_number} tries!"
end



