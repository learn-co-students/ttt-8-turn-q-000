def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,position)
  position = position.to_i - 1
  if position.between?(0,8) then
    !position_taken?(board, position)
  else 
    false
  end
end

def position_taken?(board, position)
  if board[position] == ""
    false
  elsif board[position] == " "
    false
  elsif board[position] == nil
    false
  elsif (board[position] == "X" || "O")
    true
  end
end

def move(board, position, letter = "X")
  position = position.to_i - 1
  board[position] = letter
end

def turn(board)
    puts "Please enter 1-9:"
    position = gets
     until valid_move?(board, position)
       puts "Please enter 1-9:"
    position = gets
  end
  move(board, position)
  display_board(board)
end


