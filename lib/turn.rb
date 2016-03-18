# Display the board taking an array of 9 positions
def display_board(board_array)
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
  puts "-----------"
  puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
  puts "-----------"
  puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

# helper method for determing if a move can be made.
def valid_move?(board, position)
  position = position.to_i - 1
  if(!position_taken?(board, position) && position >= 0 && position < 9)
    return true
  else
    return false
  end
end

# helper method to check if a specified position is taken
def position_taken?(board, position)
  if(board[position] == " " || board[position] == "" || board[position] == nil)
    return false
  else
    return true
  end
end

# the move method updates game array using above validations
def move(board_array, position, value="X")
  board_array[position.to_i - 1] = value
end

# the #turn method is the method that is called for each turn that takes place
# it uses all the helper methods above to cycle through a turn.
def turn(board_array)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board_array, input)
    move(board_array, input)
  else
    puts "That move is not valid, try again:"
    turn(board_array)
  end
  display_board(board_array)
end