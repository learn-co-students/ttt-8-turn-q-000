def turn(board)
	puts "Please enter 1-9:"
	position = gets.strip
	if valid_move?(board, position) 
		move(board, position)
		display_board(board)
	else 
		turn(board)
	end
end

def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position) 
	int_position = position.to_i
	if int_position.between?(1, 9) 
		if !(board[int_position-1] == "X" || board[int_position-1] == "O")
			true
		else 
			false
		end
	else
		false
	end
end

def move(board, position, token = "X") 
	int_position = position.to_i-1

	board[int_position] = token
end
