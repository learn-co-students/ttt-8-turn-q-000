def turn(board)
  puts "Please enter 1-9:"
  #position = gets.strip.to_i
  position = gets

  if valid_move?(board, position)
    move(board, position, xo = "X")
    display_board(board)
  else
    turn(board)
  end
end

# Define a method display_board that prints a 3x3 Tic Tac Toe Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#determines if valid move
def valid_move?(board, position)
  puts "board[8] = #{board[8]}"
  puts "board[9] = #{board[9]}"
  position = position.to_i
  position -= 1
  if ((board[position]  == " ") ||
        (board[position] == "")  ||
        (board[position] == nil))  && (position.between?(0,8))
    return true
  end
end

def move(board, position, xo = "X")
  position = position.to_i
  position -= 1
  board[position] = xo
end