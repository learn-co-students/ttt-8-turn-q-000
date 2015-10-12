def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, space, char = "X")
	new_space = space.to_i - 1
	board[new_space] = char
	display_board(board)
end

def valid_move?(board, space)
	new_space = space.to_i - 1
	if (new_space.between?(0,8)) && (!position_taken?(board, new_space))
		return true
	else
		return false
	end
end

def position_taken?(board, space)
	if (board[space] == "") || (board[space] == " ") || (board[space] == nil)
		return false
	else
		return true
	end
end

def turn(board)
	puts "Please enter 1-9:"
	space = gets.strip

	if valid_move?(board, space)
		move(board, space, char = "X")
	else
		turn(board)
	end
end