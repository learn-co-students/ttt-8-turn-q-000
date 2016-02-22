def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between?(1, 9) && position_taken?(board, position) == true
    true
  end
end

def position_taken?(board, position)
  position = position.to_i - 1
  if board[position] == " "
    true
  elsif board[position] == ""
    true
  elsif board[position] == nil
    true
  elsif board[position] == "X" || "O"
    false
  end
end

def move(board, position, token = "X")
  position = position.to_i - 1
  board[position] = token
end

def turn(board)
  puts "Please enter 1-9:"
  char = gets.strip
  if valid_move?(board, char) == true
    move(board, char, "X")
    display_board(board)
  else
    puts "That is not a valid move."
    turn(board)
  end
end