def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, x_o = "X")
  board[position.to_i - 1] = x_o
end

# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, position) == false
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == ' ' || board[position] == '' || board[position] == nil
    false
  elsif board[position] == 'X' || board[position] == 'O'
    true
  end
end

def turn(board)
  puts 'Please enter 1-9:'
  position = gets.strip
  if valid_move?(board, position) == true
    move(board, position, x_o = "X")
    display_board(board)
  else
    turn(board)
  end
end