
# Display Borad
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move_to)
  move_to=move_to.to_i - 1
end

# Valid_Move? method
def valid_move?(board, index)

#the if control flow below determines  if the slot specified by the user
#is not between the tic tact toe array range [0..8] or if the position is taken/occupied by an X or O
# if the position is taken (true) or the index given is not valid (false), then
# it is not a valid turn (return false). Else, it is a valid move! [true]
if !(index.between?(0, 8)) || position_taken?(board, index) == true
  return false
else
  return true
end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position]=="" || board[position]==" " #if null or empty tthen it is not taken!
    return false
  elsif board[position] == "X" || board[position]=="O" # if board position contains an X or O then it is takenn :(
    return true
  else
    return false
  end
end

#make the move
def move(board_array, array_index_position, player_character = "X")
  board_array[array_index_position]=player_character
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip

  index=input_to_index(input)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board) #recursion saved the day!! no need for a crazy loop!
  end

end
