

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && (position_taken?(board, position.to_i) == false) # if the position is a space on the board between one and nine AND the position has not already been taken, it is a valid move
      true
  else # otherwise, the move is invalid
      false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position.to_i-1] == " " || board[position.to_i-1] == "" || board[position.to_i-1] == nil # if the position is empty like so " " or like so "", or if the position has a value of nil, it has not been taken
    false
  else # otherwise, it is unavailable
    true
  end
end

def move(board, input, player="X")
  board[(input.to_i)-1] = player
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board,input)
    move(board,input)
  else
    turn(board)
  end
  display_board(board)
end
