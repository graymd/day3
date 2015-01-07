#blackjack
#use numbers 1-11 for cards
#able to split on double cards and play both hands


#deal a hand
#b = a.inject(:+)

#hearts, clubs, spades, diamonds

#44

cards = [
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11
]
first_hand = 0

player_hand = []

total_player_hand = 0
@game_on = true

while first_hand < 2
cards = cards.shuffle
player_hand.push(cards.pop)
first_hand +=1

end

puts player_hand.inspect
# puts cards.inspect


player_hand.each do |total|
	total_player_hand = total + total_player_hand
end

puts total_player_hand

def blackjack_test total_player_hand, cards, player_hand
if total_player_hand == 21
	puts "BLACKJACK!  You Win!!"

elsif total_player_hand < 21
	puts "Would you like to hit or stay?"
	next_move = gets.chomp
	if next_move == "hit"
		# cards = cards.shuffle
		# player_hand.push(cards.pop)
	elsif next_move == "stay"
		@game_on = false
	end

	elsif total_player_hand > 21
	puts "Bust!  Try Again...NOW GIVE ME YOUR MONEY!"
	end
end

while @game_on
	blackjack_test(total_player_hand, cards, player_hand)
end





puts "Your total was #{total_player_hand}."

		















