board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}  "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}  "
end

def valid_move?(board, position)
  if position.to_i.between? 1, 9
    if position_taken?(board, position)
      false
    else
      true
    end
  else
    false
  end
end

def position_taken?(board, position)
  if board[position.to_i - 1] == " "
    false
  elsif board[position.to_i - 1] == " "
    false
  elsif board[position.to_i - 1] == nil
    false
  else
    true
  end
end

def move(board, position, value = "X")
  board[position.to_i-1] = value
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if (valid_move?(board, position))
    move(board, position, "X")
    display_board(board)
  else
    turn(board)
  end
end