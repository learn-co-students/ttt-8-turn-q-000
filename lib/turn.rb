def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, char="X")
  board[position.to_i-1]=char
  return board
end

# code your #valid_move? method here
def valid_move?(board, position)
  if position.to_i>=1 && position.to_i<=9 && !position_taken?(board, position.to_i-1)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position]=="X" || board[position]=="O"
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets.strip
  while !valid_move?(board, position) do
    puts "Please enter 1-9:"
    position=gets.strip
  end
  move(board, position)
  display_board(board)
end