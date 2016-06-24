# display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ",
       "-----------",
       " #{board[3]} | #{board[4]} | #{board[5]} ",
       "-----------",
       " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(array, index)
  if index.between?(0, 8) && !(position_taken?(array, index))
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    false
  else
    true
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(array)
  puts "Please enter 1-9:"
  user_input = gets.to_i
  index = input_to_index(user_input)
  if valid_move?(array, index)
    move(array, index)
    display_board(array)
  else
    turn(array)
  end
end
