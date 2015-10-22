# code your #valid_move? method here
def valid_move?(board, move)
  move = move.to_i-1
  if (move < 0) or (move > 8)
    return false
  else 
    return position_taken?(board, move)
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, cord)
  if (board[cord] == " ")# or (board[cord] == "")# or not board[cord]
    return true
  else
    return false
  end
end

def display_board(board)
  puts board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, cord, symbol='X')
  board[cord.to_i-1] = symbol
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  while true
    move = gets.chomp
    if valid_move?(board, move)
      move(board, move)
      return display_board(board)
    end
  end
end