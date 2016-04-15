
def display_board(board)
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "] if board.nil?
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
    position = position.to_i - 1
    return false if (position < 0) or (position > 8)
    !position_taken?(board, position)
end

# code your move method here!
def move(board, position, player='X')
	board[position.to_i-1] = player
	board
end


def position_taken?(board, position)
  return true if (board[position] == 'X') or (board[position] == 'O')
  false
end




def turn(board)
  loop do 
  	puts "Please enter 1-9:"
  	position = gets.strip

  	if valid_move?(board, position)
  		move(board, position)
  		break
  	end
  end

  display_board(board)

end