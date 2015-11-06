def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
 if valid_move?(board, position)
   move(board, position, "X")
 else
   turn(board)
 end
end
# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i
  position = position-1
  if position.between?(0,9)
    if position_taken?(board, position)
      false
    else
      true
    end
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if (board[position] =="") | (board[position] ==" ") | (board[position] ==nil)
    false
  elsif (board[position] =="X") | (board[position] =="O")
    true
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
def move(board, position, letter = "X")
  position = position.to_i
  board[position-1] = letter
  display_board(board)
end