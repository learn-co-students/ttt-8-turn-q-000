def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char = "X")
  board[position.to_i - 1] = char
end

def position_taken?(board, position)
  if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    return true
  elsif board[position.to_i] == " " || board[position.to_i] == "" || board[position.to_i] == nil
    return false
  end
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, position) == false
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets
  if valid_move?(board, position) == false
    puts "Sorry, that is not a valid move."
    turn(board)
  else move(board, position, char = "X")
    display_board(board)
  end
end
