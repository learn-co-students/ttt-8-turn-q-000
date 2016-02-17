def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, value = "X")
  board[position.to_i - 1] = value
  return board
end


def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) == false && position.between?(0, 10)
    return true
  elsif board[position] == "X" || board[position] == "O"
    return false
  end
end


def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    true
  elsif board[position] == "" || board[position] == " " || board[position] == nil
    false
  end
 end


def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == true
   move(board, position, value = "X")
  else
    turn(board)
  end
  display_board(board)
end
