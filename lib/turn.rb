def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, position)
  if position_taken?(board, position.to_i - 1) == true or (position.to_i - 1).between?(0, 8) == false
    return false
  elsif board[position.to_i] == " " or board[position.to_i] == ""
    return true
  end
end

def move (board, position, character = "X")
  board[position.to_i - 1] = character
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == false
    turn(board)
  else
    move(board, position)
    display_board(board)
  end
end