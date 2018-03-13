def valid_move?(board,position)
  position = position.to_i - 1
  return position.between?(0,8) && !position_taken?(board,position)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  return (board[position] == "X" || board[position] == "O")
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, position, value = "X")
  board[position.to_i-1] = value

end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  if valid_move?(board,input)
    move(board,input,"X")
    display_board(board)
  else
    turn(board)
  end
end