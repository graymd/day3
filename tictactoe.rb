puts "What is your name dude"
name = gets.chomp
puts "Your name is #{name}!"
puts "Tic tac toe."
@game_on = true
@good_spot = true

# Draw a board
# Asks for user to pick a location
# Draws an X in said location
# Asks next user to pick a location
# Draws an O in said location
# Repeat until 3 in a row/diagonal

board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]

def draw_board board, playername
	# board[0][0] == 0 ? "" : "X"
	puts playername
	puts "#{draw_space(board[0][0])}|#{draw_space(board[0][1])}|#{draw_space(board[0][2])}"
	puts '-----'
	puts "#{draw_space(board[1][0])}|#{draw_space(board[1][1])}|#{draw_space(board[1][2])}"
	puts '-----'
	puts "#{draw_space(board[2][0])}|#{draw_space(board[2][1])}|#{draw_space(board[2][2])}"

end

def draw_space board_space
	if board_space == 0
		' '
	elsif board_space == 1
		'X'
	elsif board_space == 2
		'O'
	end

	# return "hey Ryan!"
	# "hey Ryan!" - you do not need the return!
	# puts "Hey"
	# board_space + " you're cool! "
end

def pick_location board, player
	puts "Pick a location (1-9):"
	location = gets.chomp.to_i
	if location == 1
		if board[0][0] == 0
			board[0][0] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 2
		if board[0][1] == 0
			board[0][1] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 3
		if board[0][2] == 0
			board[0][2] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 4
		if board[1][0] == 0
			board[1][0] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 5
		if board[1][1] == 0
			board[1][1] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 6
		if board[1][2] == 0
			board[1][2] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 7
		if board[2][0] == 0
			board[2][0] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 8
		if board[2][1] == 0
			board[2][1] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end
	elsif location == 9
		if board[2][2] == 0
			board[2][2] = player
		else
			@good_spot = false
			puts "Please pick a blank location!"
		end

	end
end



def winner board
	if board[0][0] == board[0][1] &&  board[0][1] == board[0][2] && board[0][0] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board[0][0] == board[1][0] && board[1][0] == board[2][0] && board[0][0] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board[0][1] == board[1][1] && board[1][1] == board[2][1] && board[0][1] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board[0][2] == board[1][2] && board[1][2] == board[2][2] && board[0][2] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board[1][0] == board[1][1] && board[1][1] == board[1][2] && board[1][0] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board[2][0] == board[2][1] && board[2][1] == board[2][2] && board[2][0] != 0
		@game_on = false
		puts "Congrats!  You are the winner!"
	elsif board.all? { |spot| spot != 0 }
		@game_on = false
		puts "Cat tie!"
	end
end





# puts draw_space(board[0][1])
# 10.times do
# 	draw_board
# end
while @game_on
	p @game_on
	# while @good_spot
	# end
	player = 1
		draw_board(board, name)
		pick_location(board, player)
		p board
		board[0][0]
		winner(board)
	if @game_on != false
		player = 2
		draw_board(board, name)
		pick_location(board, player)
		winner(board)
	end

end

# [12,3,4,5].each do |number|
# 	puts number
# end


