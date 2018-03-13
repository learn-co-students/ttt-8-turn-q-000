
board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} ",
       "-----------",
       " #{board[3]} | #{board[4]} | #{board[5]} ",
       "-----------",
       " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input, value = "X")
    display_board(board)
  else !valid_move?(board, input)
    turn(board)
  end
end

def move(board, position, value = "X")
  position = position.to_i
  board[(position - 1)] = value
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0, 8) && !position_taken?(board, position)
    true
  end
end

def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else position == "X" || position == "O"
    true
  end
end