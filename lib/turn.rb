# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  if position == 1..9 || position_taken?
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!

def move(board, location, char="X")
  location = location.to_i
  board[location - 1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  valid = valid_move?(board, input)
  if !valid
    puts "Please enter 1-9:"
    input = gets.strip
    valid = valid_move?(board, input)
  end
  move(board, input, char="X")
  display_board(board)
end