def display_board(board)
    puts " #{board[0]} " + "| #{board[1]} |" + " #{board[2]} "
    puts "-----------"
    puts " #{board[3]} " + "| #{board[4]} |" + " #{board[5]} "
    puts "-----------"
    puts " #{board[6]} " + "| #{board[7]} |" + " #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
     return false
  else board[position] == "X" || board[position] == "O"
     return true
  end
end


def valid_move?(board, position)
  position = position.to_i
  position = position - 1
  if position.between?(0, 10) && position_taken?(board, position) != true
    return true
  else
    return false
  end
end

def move(board, input, character = "X")
  input = input.to_i
  board[(input - 1)] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  if valid_move?(board, position) == false
    puts "Please go again"
    puts turn(board)
  else
    position = position.to_i
    position = position - 1
    board[position] = "X"
    puts display_board(board)
  end
end
