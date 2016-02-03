def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board,position)
  position = position.to_i
  position -= 1
  !position_taken?(board,position) && position.between?(0,8)? true : false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
  (board[position] ==  " " || board[position] == "" || board[position] == nil) ?
    false : true
end

def move(board, position, char = "X")
  position = position.to_i
  position -= 1
  board[position] = char
  board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  valid_move?(board,input) ? move(board,input) : turn(board)
  display_board(board)
 end
