def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
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

# code your move method here! 
def move(board, position, playchar = "X")
	idx = position.to_i
	idx = idx - 1
	board[idx] = playchar
	board
end

# code your #valid_move? method here
def valid_move?(board, idx)
	position = idx.to_i - 1
	if position.between?(0, 8) && !position_taken?(board, position)
		true
	else
		false
	end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, idx)
	if board[idx] == nil || board[idx] == "" || board[idx] == " " 
		false
	elsif board[idx] == "X" || board[idx] == "O"
		true
	else
		false
	end
end

