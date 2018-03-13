def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == true
    move(board, position, player="X")
    display_board(board)
  else while valid_move?(board, position) == false
    puts "Please enter 1-9:"
    position = gets.chomp
  end
  end
end

def valid_move?(board, position)
  position = position.to_i
  position -= 1
  if position_taken?(board, position) == false && position.between?(0, 8) == true
    true
  else
  false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
   true
 elsif board[position] == "" || board[position] == " "
     false
  elsif board[position] == nil
    false
   end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " "," "," "," "," "," "," "," "]

def move(board, position, player="X")
  position = position.to_i
  position -= 1
  board[position] = player
end
