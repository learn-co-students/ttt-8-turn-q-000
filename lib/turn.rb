#get input
#convert input to index
#if index is valid
#  make the move for input
#else
#  ask for input again until you get a valid input
#end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index, character ="X")
  else
    turn(board)
  end
  display_board(board)
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  index.to_i - 1

  if (position_taken?(board, index) == false && index.between?(0, 8) == true)
    return true

  else position_taken?(board, index) == true
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  index.to_i - 1

  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false

  else (board[index] == "X" || board[index] == "O")
    return true

  end
end


def input_to_index(user_input)
  user_input.to_i - 1
end


def move(board, user_input, character = "X")
  user_input.to_i - 1
  return board[user_input] = character
end
