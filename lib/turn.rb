def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position) == true
    move(board,position,character = "X")
    display_board(board)
  else
    puts "Invalid move"
    turn(board)
  end
end

# display board

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid move

def valid_move? (board, position)
  position = position.to_i
  if position_taken?(board, position)
    return false
  elsif position.between?(1,9) == false
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, position)
  position = position-1
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

# move

def move(board,position,character = "X")
  position = position.to_i
  board[position-1] = character
end
