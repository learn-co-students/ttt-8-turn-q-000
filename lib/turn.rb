def display_board(board = " ")
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "O"
    return true
  elsif board[index] == "X"
    return true
  elsif board[index] != "X"
    return false
  elsif board[index] != "O"
    return false
  end
end

def move(board, index, value = "X")
  if value
    board[index] = value
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  value = gets.strip
  index = input_to_index(value)
  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    puts "Please re-enter a valid input"
    turn(board)
  end
end
