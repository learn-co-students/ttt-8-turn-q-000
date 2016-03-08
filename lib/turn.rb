def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position)
    move(board,position)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  if position.to_i.between?(1,9) && !position_taken?(board,position)
    return true
  end
  return false
end

def position_taken?(board,position)
  board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
end

def move(board,position,character="X")
  board[position.to_i - 1] = character
  return board
end
