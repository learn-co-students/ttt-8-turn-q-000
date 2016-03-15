def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!

def move(board, input, value="X")
  input = input.to_i-1
  board[input] = value
  display_board(board)
end

board = [" "," "," "," "," "," "," "," "," "]
position = nil

def valid_move?(board, position)
  position =  position.to_i
  if position.between?(1, 9)
    if position_taken?(board, position)
      return true
      else
      return false
    end
    else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  playerToken = "X"
  if board[position-1].include?(playerToken)
    return false
   else
    return true
  end
end
