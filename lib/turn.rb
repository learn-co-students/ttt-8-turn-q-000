def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1,9) == true && position_taken?(board, position) == false
    true
  else
    false
  end
end


def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end

def move(board, position, char="X")
  position = position.to_i - 1
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board,position) == true
    move(board,position)
  else
    turn(board) #recursively ask user for valid input again and again until it is true
  end
  display_board(board)
end