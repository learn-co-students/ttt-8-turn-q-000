# Define display_board that accepts a board and prints
# out the current state.
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# #valid_move? method
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  taken = nil
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
end

# input_to_index and move method
def input_to_index(input)
  input.to_i - 1
end


def move(board, index, current_player = "X")
  board[index] = current_player
end

# define turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, current_player = "X")
    display_board(board)
  else
    turn(board)
  end
end
