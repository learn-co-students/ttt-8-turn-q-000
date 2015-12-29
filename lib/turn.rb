def display_board
  puts "   |   |   
-----------
   |   |   
-----------
   |   |   "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, input, current_player = "X")
  board[input.to_i-1] = current_player
end

def valid_move?(board, position)
  position = position.to_i
  if position.between?(1,9) && position_taken?(board, position) == false
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position-1] == " " || board[position-1] == "" || board[position-1] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, current_player = "X")
    display_board(board)
  else
    turn(board)
  end
end

