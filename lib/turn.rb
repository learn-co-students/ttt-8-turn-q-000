board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
 position_int = position.to_i - 1
 position_taken?(board, position_int) == false && position_int.between?(0,8)
end 

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
 !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def move(board, position_int, player = "X")
  board[position_int - 1] = player 
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  if valid_move?(board, input)
    move(board, input.to_i)
    display_board(board)
  else
    turn(board)
    end

end

