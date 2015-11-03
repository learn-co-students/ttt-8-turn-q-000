def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if (position.to_i.between?(1, 9)) && (position_taken?(board, position.to_i - 1) == false)
    return true
  else
    return false
end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == "X"
    return true
  elsif board[position] == "O"
    return true
  elsif board[position] == (" " || "" || nil)
    return false
  end
end

def move(board, input, c="X")
  board[input.to_i-1] = c
 end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
  end