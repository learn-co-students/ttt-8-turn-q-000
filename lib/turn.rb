def display_board(board)
 row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
 seperator = "-----------"
 row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
 row3 = " #{board[6]} | #{board[7]} | #{board[8]} "

puts row1
puts seperator
puts row2
puts seperator
puts row3

end


def input_to_index(str)
  buffer = str.to_i()
  index = buffer - 1
end

def valid_move?(board, index)
  if( index.between?(0, 8) && !position_taken?(board, index))
    true
  end

end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false

  elsif board[index] == "X" || board[index] == "O"
    true
  end

end

def move(array, index, value = "X")
  #sets the board's spot to -value-
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip) # get user input and process
  if valid_move?(board, index)
    move(board, index) # call with default argument -value- = "X"
    display_board(board)
  else
    turn(board)
  end
end
