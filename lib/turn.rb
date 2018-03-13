
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  print " #{board[0]} |" + " #{board[1]} |" + " #{board[2]} \n------------\n"
  print " #{board[3]} |" + " #{board[4]} |" + " #{board[5]} \n------------\n"
  print " #{board[6]} |" + " #{board[7]} |" + " #{board[8]} \n------------\n"
end

def move (board, position, player_id)
  board[(position.to_i - 1)] = player_id
  return board
end


def valid_move?(board, position)
  
  if position.to_i.between?(1, 9) == false
    puts "Not on the board."
    return false
  elsif position_taken?(board, position) == true
    return false
  else
    return true
  end
end


def position_taken?(board, position)
  if (board[position.to_i - 1] == "X") || (board[position.to_i - 1] == "O")
    puts "That one's taken."
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == false
    puts "Try again."
    turn(board)
  else
    move(board, position, player_id = "X")
    display_board(board) 
  end
#  end
end
