def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  valid_move?(board, input) ? move(board,input) : turn(board)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} 
  -----------
   #{board[3]} | #{board[4]} | #{board[5]} 
  -----------
   #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, pos)
  pos.to_i.between?(1,9) && !position_taken?(board, pos)
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  [" ", "", nil].none?{|x| x == board[pos.to_i - 1]}
end

def move(board, move, symbol="X")
  board[move.to_i - 1] = symbol
end