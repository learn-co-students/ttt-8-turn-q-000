def display_board(board)
puts" #{board[0]} | #{board[1]} | #{board[2]} "
puts"-----------"
puts" #{board[3]} | #{board[4]} | #{board[5]} "
puts"-----------"
puts" #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, input)
  if board[input.to_i - 1] == " "
    true
   end
end


def move(board, input, char = "X")
  board[input.to_i - 1]=char
end


def turn(board)
puts "Please enter 1-9:"
   input = gets
   if input.to_i - 1 <= 9
     valid_move?(board, input)
     move(board, input, char = "X")
     display_board(board)
   else
     turn(board)
   end
end
