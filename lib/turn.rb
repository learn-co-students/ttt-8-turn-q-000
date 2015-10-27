def turn(board)
  loop do
  puts "Please enter 1-9:"
  turn = gets.strip
  position = turn
    if valid_move?(board, position) == true
      move(board, position)
      display_board(board)
    break
  end
end
    #move(board, position)
 # else
 # i = 0
#  loop do
#    valid_move?(board, position) !=true
  #  puts "invalid move"
 #   puts "Please enter 1-9:"
#  end
#  end


#if valid_move?(board, position)
   # move(board, position)
  #else
 # until
     # puts "invalid move"
     # valid_move?(board, position) == true
     # turn(board)
 # end
  #end
  #display_board(board)
end


def display_board(board)
  puts [" #{board[0]} | #{board[1]} | #{board[2]} ","-----------", " #{board[3]} | #{board[4]} | #{board[5]} ","-----------",   " #{board[6]} | #{board[7]} | #{board[8]} "]
end

#Method Valid Move (using methods position taken and between)
def valid_move?(board, position)
  position = position.to_i
  if (between?(board, position)!= true)
  elsif position_taken?(board, position) == true
  else
  return true
 end
end

#Method Position Taken
def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else
    true
  end
end

#Method Between 1-9 (0-8 Index)
def between?(board, position)
  position = position.to_i - 1
  if position < 0
    return false
  elsif position > 8
    return false
  else
    return true
  end
end


#Method Move
def move(board, position, player = "X")
  position = position.to_i - 1
  board[position] = player
end
