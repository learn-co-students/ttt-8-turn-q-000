# Define a method display_board that prints a 3x3 Tic Tac Toe Board
def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def valid_move?(board, position)
  if (!position_taken?(board, position) || board[position.to_i - 1] == " ") && (position.to_i >=1 && position.to_i <=9)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position.to_i - 1] == "X") || (board[position.to_i - 1] == "O")
    true
  else
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

# code your move method here!
def move(board, input, value = "X")
  board[(input.to_i - 1)] = value
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  while !valid_move?(board,input)
    turn(board)
    break
  end
  move(board, input, "X")
  display_board(board)
end
