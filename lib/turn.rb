def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
	input = position.to_i
	if input.between?(1, 9) == true && position_taken?(board, position) == false
		return true
	else
		return false	
	end
end

def position_taken?(board, position)
	if board[position.to_i - 1] == " " || board[position.to_i - 1]  == "" || board[position.to_i - 1] == nil
		return false
	elsif board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
		return true
	end

end

def move(board, input, character = 'X')
		position = input.to_i - 1
		board[position] = character

end

def turn(board)
	puts "Please enter 1-9:"
	position = gets.strip
	if valid_move?(board, position) == true
		move(board, position, character = 'X')
		display_board(board)
	else
			turn(board)		
	end
end