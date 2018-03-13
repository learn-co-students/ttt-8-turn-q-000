def turn(board)

  puts "Please enter 1-9:"
  position = gets.strip

  index = position.to_i - 1
  input_to_index(position)

    if valid_move?(board, index) == true
      move(board, index, char = "X")
      display_board(board)
    else
      turn(board)
    end
end


def valid_move?(board, index)
  if ((index.between?(0, 8)) && (position_taken?(board, index) == false))
    return true
  else
    return false
  end
end


def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == nil) || (board[index] == "")
    return false
  else
    if (board[index] == "X") || (board[index] == "O")
      return true
    end
  end
end

def move(board, index, char = "X")
  board[index] = char
  return board
end

def input_to_index(position)
  index = position.to_i - 1
end

def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n"
  print "-----------\n"
  print " #{board[3]} | #{board[4]} | #{board[5]} \n"
  print "-----------\n"
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"
end
