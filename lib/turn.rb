# define display_board
board = Array.new(9, " ")
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert input to index
def input_to_index(input)
  index = input.to_i
  index = index-1
  return index
end

# if index is valid
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
end

# get input
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  taken = nil
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false
  else taken = true
  end
end

#  make the move for index
def move(board, index, value = "X")
  board[index] = value
end

#  show the board

#else
#  ask for input again until you get a valid input
#end
