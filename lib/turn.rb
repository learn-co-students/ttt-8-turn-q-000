def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  line = "-----------"
  puts row1
  puts line
  puts row2
  puts line
  puts row3
end

#convert from user input to index
def input_to_index(input)
  input.to_i - 1
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else position_taken?(board, index) == true
    nil
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false

  elsif board[index] == "X"
    true
  else board[index] == "O"
     true
  end
end

#code your move method here
def move(board, index, token = "X")
  board[index] = token
end

#code turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index)
  #if index is valid
  if index.between?(0, 8)
    move(board, index, token = "X")
  else
      turn(board)
  end
  display_board(board)
end
