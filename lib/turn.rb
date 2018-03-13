def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input.to_i - 1
  input_to_index(input)
  if  valid_move?(board, index) == true
    move(board, index, player = "X")
    display_board(board)
  else
      turn(board)
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else board[index] == "X" || board[index] == "x" ||board[index] == "O" || board[index] == "o"
    return true
  end
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end
