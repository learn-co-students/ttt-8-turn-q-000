board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position) == false
    puts "please enter 1-9:"
    position = gets.strip
  else
    move(board, position, char="X")
  end
display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, position)
move = position.to_i-1
  if position_taken?(board, position) && (move.between?(0, 8))
    return true
  else
    return false
  end
end



def position_taken?(board, position)
  if board[position.to_i-1] != " "
    return false
  else
    return true
  end
end


def move(board, position, char="X")
  board[position.to_i-1] = char
end

