#board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken? (board, position)
  position = position - 1
  if (board[position] == " " or board[position] == "" or board[position] == nil)
    return false
  else
   return true
  end
end

def valid_move?(board, position)
  position = position.to_i

  if (( position > 0 and  position < 10) and (position_taken?(board, position) == false))
    return true
  else
    return  false
  end
end

def move(board, value, char = "X")
  spot = value.to_i
  spot = spot - 1
  board[spot] = char
end

def turn (board)
  puts "Please enter 1-9:"
  position = gets
  if ( valid_move?(board, position) == true)
      move(board, position)
      display_board(board)
    else
      puts "invalid move, try again"
      turn(board)
  end


end