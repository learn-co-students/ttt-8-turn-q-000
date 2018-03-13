def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-"*11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-"*11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) && !position_taken?(board, position)
     true
  else
     false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position.to_i-1] != " "
    true
  end
end

def move(board, position, value = "X")
  position = position.to_i - 1
  board[position] = value
end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position)
    move(board, position, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
