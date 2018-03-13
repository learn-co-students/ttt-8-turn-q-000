def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move (board, position, player = "X" )
  position = position.to_i - 1
  board[(position)] = player
  return board
end

# check to see if move is valid
def valid_move?(board, position)
  (position.to_i - 1).between?(0,8) && !position_taken?(board, position)
end

# check to see if position is taken
def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else board[position] == "X" || board[position] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if !valid_move?(board, position)
    turn(board)
  else
    move(board, position, player = "X")
    display_board(board)
  end
end


