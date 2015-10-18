def valid_move?(board, position)
  position = position.to_i - 1
  if position > 8 or position < 0
    return false # return false if the position is out of range
  else
    return !position_taken?(board, position) # return true if position not taken, else false
  end
end

def position_taken?(board,position)
  return !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def move(board, position, char='X')
  position = position.to_i - 1
  board[position] = char
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  position = -1
  loop do # loop until input is valid
    puts "Please enter 1-9:"
    position = gets.strip
    if valid_move?(board, position)
      break
    end
  end
  move(board, position) # make move
  display_board(board) # display new board
end