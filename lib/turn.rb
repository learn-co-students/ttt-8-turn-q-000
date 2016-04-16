def display_board(board)
  	puts " #{board[0]} | #{board[1]} | #{board[2]} "
  	puts "-----------"
  	puts " #{board[3]} | #{board[4]} | #{board[5]} "
  	puts "-----------"
  	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
	position.to_i.between?(1,9) and not position_taken?(board, position.to_i - 1)
end

def turn(board)
	puts "Please enter 1-9:"
	input = gets.strip

	if valid_move?(board, input)
		move(board, input)
	else
		turn(board)
	end
	display_board(board)
end

def position_taken?(board, position)
	if board[position] == " " || board[position] == ""
		return false
	elsif board[position] == nil
		return false
	else 
		return true		
	end
end

# code your move method here!
def move(board, position, character = "X")
	 board[position.to_i - 1] = character
end






	