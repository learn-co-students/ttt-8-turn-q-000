def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
	spot = position.to_i - 1
	if !position_taken?(board, spot) && spot.between?(0,8)
		true

	else
		false

	end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
  	false

  else
  	true

  end

end

def move(board, position, value="X")
  location = position.to_i - 1
  board[location] = value
end

def turn(board)
	puts "Please enter 1-9:"
	input = gets.strip

	if valid_move?(board, input)
		move(board, input, value="X")
		display_board(board)

	else
		until valid_move?(board, input) == true
			turn(board)
			break
	  end	
	end	 

end