def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])

	puts "  #{board[0]} | #{board[1]} | #{board[2]} "
	puts " ----------- "
	puts "  #{board[3]} | #{board[4]} | #{board[5]} "
	puts " ----------- "
	puts "  #{board[6]} | #{board[7]} | #{board[8]} "
	
end

def valid_move?(board, position)
	position = position.to_i - 1
	if position.between?(0,9) && !position_taken?(board, position)
		return true
	else
		return false
	end
end

def position_taken?(board, position)
	if board[position] == "X" || board[position] == "0"
		return true
	else
		return false
	end
end

def move(board, position, current_player = "X")
	board[position.to_i - 1] = current_player
end

def turn(board)
	loop do
		puts "Please enter 1-9:"
		position = gets.chomp
			if board[position.to_i] && valid_move?(board, position)
				move(board, position, current_player = "X")
				break
			end
	end
	display_board(board)
end