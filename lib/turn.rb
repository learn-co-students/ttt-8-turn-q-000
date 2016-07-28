def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "------------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "------------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
	index = user_input.to_i - 1
end

def valid_move?(board, index)
	if position_already_taken?(board, index) || !index.between?(0, board.count - 1)
		return false
	else
		return true
	end
end

def position_already_taken?(board, index)
	if board[index] == " " || board[index] == ""
		return false
	else
		return true
	end
end

def move(board, index, character = "X")
	board[index] = character
end

def turn(board)
	puts "Please enter 1-9:"
	user_input = gets.strip
	input_to_index(user_input)
	if valid_move?(board, index)
		move(board, index)
		display_board(board)
	else
		puts "Invalid."
		turn(board)
	end
end