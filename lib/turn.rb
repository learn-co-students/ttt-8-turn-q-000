def display_board(pos)
	puts " #{pos[0]} | #{pos[1]} | #{pos[2]} "
	puts "-----------"
	puts " #{pos[3]} | #{pos[4]} | #{pos[5]} "
	puts "-----------"
	puts " #{pos[6]} | #{pos[7]} | #{pos[8]} "
end

def turn(board)
	#Get user input
	puts "Please enter 1-9:"
	input = gets.strip
	#validate the move
	if valid_move?(board, input) == true
		move(board, input)
	else
		turn(board)
	end
	display_board(board)
end

def valid_move?(board, position)
	position=position.to_i
	if position.between?(1,9) && position_taken?(board, position)
		return true
	else
		return false
	end
end
#
def position_taken?(board, position)
	position -= 1
	if board[position] == " " || board[position] == "" || board[position] == nil 
		return true
	else board[position] == "O" || "X"
		return false
	end
end

def move(array, pos, char = "X")
	pos = pos.to_i - 1
	array[pos] = char
end
