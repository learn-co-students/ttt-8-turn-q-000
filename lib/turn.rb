#Board setup as array
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# is the position taken
def position_taken?(board, position)
  if board[position] == nil||board[position]==""||board[position]==" "
    false
  else
    true
  end
end

#Is it a valid move - between 1,9 and position taken = false
def valid_move?(board,position)
  position=position.to_i-1
  if position.between?(0,8) && !position_taken?(board, position)
    true
  else
    false
  end
end

#Move with default character X
def move(board, position,char="X")
  board[position.to_i-1] = char
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position,char="X")
  else
    turn(board)
  end
end
