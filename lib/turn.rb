def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board = [" "," "," "," "," "," "," "," "," "," "])
  row_sep = "-----------"
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts row_sep
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts row_sep
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  pos_num = position.to_i - 1
  if (!position_taken?(board, pos_num)) && pos_num.between?(0, 8)
    true
  else
    false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position] == " " || board[position] == "" || board[position] == nil)
    false
  elsif (board[position] == "X" || board[position] == "O")
    true
  end
end


# code your move method here!
def move(board, position, char='X')
  pos_as_int = position.to_i - 1
  board[pos_as_int] = char
end
