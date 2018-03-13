def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  input = position.to_i - 1
  input.between?(0, 8)
  if input.between?(0, 8) && !position_taken?(board, input)
    true
  end
end

 # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, input)
  if board[input] == " " || board[input] == "" || board[input] == nil
    false
  else
    true
  end
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == true then
    move(board, position, character = "X")
    display_board(board)
  else turn(board)
  end
end

