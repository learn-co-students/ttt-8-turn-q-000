def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0, 8) == true && position_taken?(board, position) == false
    true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, int)
  if board[int] == "X" || board[int] == "O"
    true
  elsif board[int] == " " || board[int] == ""
    false
  elsif board[int] == nil
    false
  end
end

def move(board, input, char="X")
  input = input.to_i
  board[input-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  square = gets.chomp
  if valid_move?(board, square)
    move(board, square, char)
    display_board(board)
  else
    turn(board)
  end
end
