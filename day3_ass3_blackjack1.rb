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
@game_on = true
new_hand = []
new_hand1 = []

def deal cards, player_hand, total_player_hand
	if player_hand.length < 2
		while player_hand.length < 2
			cards = cards.shuffle
			player_hand.push(cards.pop)
		end
	else
		cards = cards.shuffle
		player_hand.push(cards.pop)
	end

	puts player_hand.inspect

	@total_player_hand = 0
	player_hand.each do |total|
		@total_player_hand += total
	end
	puts @total_player_hand.inspect
end




def blackjack_test total_player_hand, cards
	p @total_player_hand
	if @total_player_hand == 21
		puts "BLACKJACK!  You Win!!"
		@game_on = false
	elsif @total_player_hand > 21
		puts "Bust!  Try Again...NOW GIVE ME YOUR MONEY!"
		@game_on = false
	elsif @total_player_hand < 21
		puts "Would you like to hit or stay?"
		next_move = gets.chomp
		if next_move == "stay"
			puts "well you win...but that's cause you're playing by yourself!"
			@game_on = false
		end
	end
end


# def split_hand(player_hand)
# 	 new_hand.push(player_hand.pop)
# 	 new_hand1.push(player_hand.pop)

# end




while @game_on
	deal(cards, player_hand, @total_player_hand)
	puts "the player hand is #{player_hand}"
	# if player_hand[0] = player_hand[1]
	# 	split_hand(player_hand)
	# end

	blackjack_test(@total_player_hand, cards)
end


		















