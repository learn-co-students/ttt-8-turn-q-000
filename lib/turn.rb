def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  move = position.to_i - 1
  if move.between?(0,8) && !position_taken?(board, move)
    true
  end
end
def position_taken?(board, position)
  if
    board[position] == " " ||
    board[position] == ""  ||
    board[position] == nil
    false
  else
     true
  end
end

def move(board, position, char="X")
  board[position.to_i - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
if !valid_move?(board,position)
  turn(board)
  else
    move(board, position, char="X")
    display_board(board)
    end
  end









