def display_board(board)
  puts " #{board[0]} " + "| #{board[1]} |" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "| #{board[4]} |" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "| #{board[7]} |" + " #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, character = "X")
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, input)
  position = input.to_i - 1
  if position.between?(0, 8) && board[position] == " "
    return true
  else position_taken?(board, input)
  end
end

def position_taken?(board, input)
  if board[input.to_i - 1] != 0.upto(8) || board[input.to_i - 1] != " "
    return false
  end
end

def move(board, input, character = "X")
  board[input.to_i - 1] = "#{character}"
end
