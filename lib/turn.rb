board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "
end
def input_to_index(user_input)
  index = (user_input.to_i - 1)
end
def position_taken?(board, index)
  return true if board[index] == "X" || board[index] == "O"
  return false if board[index] == "" || board[index] == " " || board[index] == nil
end
def valid_move?(board, index)
  return true if index.between?(0, 8) && !(position_taken?(board, index))
end
def move(board, index, value)
  board[index] = value
end
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
