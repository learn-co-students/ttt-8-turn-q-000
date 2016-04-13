def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, pos, mark = "X")
  board[pos.to_i - 1] = mark
  return board
end

def valid_move?(board, pos)
  if pos.to_i.between?(1,9) && !position_taken?(board, pos.to_i-1)
    return true
  end
  return false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, pos)
  if (board[pos] == "X" || board[pos] == "O")
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
    return
  else
    turn(board)
  end
  # move(board, next_turn)


  return input
  
end