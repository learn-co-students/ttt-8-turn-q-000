# Checks to see if the move is valid.
def valid_move?(board, pos)
  if position_taken?(board, pos.to_i - 1)
    false
  elsif pos.to_i-1 >= 0 && pos.to_i-1 <= 8
    true
  end
end

# Checks to see if the position is taken or blank.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || board[position] == "O"
    true
  end
end

#displays the board as output
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# sets a board position to the chosen value. Default X
def move(board, pos, val="X")
  board[pos.to_i-1] = val
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board,input)
    puts display_board(board)
  else
    turn(board)
  end
end