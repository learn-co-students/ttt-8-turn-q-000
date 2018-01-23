def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  input = user_input.to_i
  index = input - 1
end
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  def update_array_at_with(array, index, value)
    array[index] = value
  end
def move(board, index, char = "X")
  update_array_at_with(board, index, char)
end

def valid_move?(board, index)
  def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end
if index.between?(0, 8) == true && position_taken?(board, index) == false
  true
else index.between?(0, 8) == false && position_taken?(board, index) == true
  false
end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
  move(board, index, "X")
  display_board(board)
  else valid_move?(board, index) == false
  turn(board)
end
end
