def display_board(board)
  l = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts l
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts l
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position_taken?(board,position.to_i-1) || !(position.to_i.between?(1,9))
    return false
  else
    return true
  end
end

def position_taken?(board, position)
  if (board[position] == " " or board[position] == "" or board[position] == nil)
    return false
  elsif (board[position] == "X" or board[position] == "O")
    return true
  end
end

def move(board, position, char = "X")
  board[position.to_i-1] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip()
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  elsif !valid_move?(board,input)
    turn(board)
  end
end
