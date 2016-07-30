#turn method
def turn(board)
	puts "Please enter 1-9:"
	input = gets.strip
	index = input_to_index(input)

	if valid_move?(board, index)
		move(board, index)
		display_board(board)
	else
		turn(board)
	end
end

# code your input_to_index and move method here!
def input_to_index(input)
  input = input.to_i
  input = input -1

end

# move method
def move(board, index, token = "X")
  board[index] = token
	return board
end


# display_board method
def display_board(board)
	row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
	row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
	row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
	divider = "-----------"
	puts row_one
	puts divider
	puts row_two
	puts divider
	puts row_three
end

# code your #valid_move? method here
def valid_move?(board, index)
	if index.between?(0,8) && !position_taken?(board, index)
		return true
	else
		return false
	end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
	if board[index] == " " || board[index] == "" || board[index] == nil
		return false
	elsif board[index] == "X" || board[index] == "O"
		return true
	end
end
